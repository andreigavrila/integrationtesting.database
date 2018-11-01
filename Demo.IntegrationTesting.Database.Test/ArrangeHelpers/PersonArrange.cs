using Demo.IntegrationTesting.Database.Model;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Demo.IntegrationTesting.Database.Test.ArrangeHelpers
{
    public class PersonArrange
    {
        public static string connectionString =
            "Data Source=(local);Initial Catalog=Demo.IntegrationTesting.Database.Test;"
            + "Integrated Security=true";

        public static string queryString =
            "INSERT INTO [Demo.IntegrationTesting.Database.Test].[dbo].[Persons]"
            + "VALUES(@id, @name, @cnp, @age);";

        public static void Create(Person input)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                // Create the Command and Parameter objects.
                SqlCommand command = new SqlCommand(queryString, connection);
                command.Parameters.AddWithValue("@id", input.Id);
                command.Parameters.AddWithValue("@name", input.Name);
                command.Parameters.AddWithValue("@cnp", input.CNP);
                command.Parameters.AddWithValue("@age", input.Age);

                connection.Open();
                command.ExecuteNonQuery();
            }
        }
    }
}
