using Demo.IntegrationTesting.Database.Model;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Demo.IntegrationTesting.Database.DataAccess
{
    public class PersonDao
    {
        public string connectionString =
            "Data Source=(local);Initial Catalog=Demo.IntegrationTesting.Database;"
            + "Integrated Security=true";


        public PersonDao()
        {

        }

        public PersonDao(string connectionString)
        {
            this.connectionString = connectionString;
        }

        public Person GetPersonById(int id)
        {
            // Provide the query string with a parameter placeholder.
            string queryString =
                "SELECT * from dbo.Persons "
                    + "WHERE Id = @id";

            // Create and open the connection in a using block. This
            // ensures that all resources will be closed and disposed
            // when the code exits.
            using (SqlConnection connection =
                new SqlConnection(connectionString))
            {
                // Create the Command and Parameter objects.
                SqlCommand command = new SqlCommand(queryString, connection);
                command.Parameters.AddWithValue("@id", id);

                // Open the connection in a try/catch block. 
                // Create and execute the DataReader, writing the result
                // set to the console window.
                try
                {
                    connection.Open();
                    SqlDataReader reader = command.ExecuteReader();
                    
                    if(reader.HasRows == false)
                    {
                        return null;
                    }

                    Person result = new Person();

                    while (reader.Read())
                    {
                        result.Id = (int)reader[0];
                        result.Name = (string)reader[1];
                        result.CNP = (string)reader[2];
                        result.Age = (int)reader[3];
                        
                    }
                    reader.Close();

                    return result;
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.Message);

                    return null;
                }
            }
        }
    }
}
