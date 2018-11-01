using Demo.IntegrationTesting.Database.DataAccess;
using Demo.IntegrationTesting.Database.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Demo.IntegrationTesting.Database
{
    class Program
    {
        static void Main(string[] args)
        {
            Person p = new PersonDao().GetPersonById(1);
        }
    }
}
