using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System.Data.SqlClient;
using Demo.IntegrationTesting.Database.Model;
using Demo.IntegrationTesting.Database.Test.ArrangeHelpers;
using Demo.IntegrationTesting.Database.DataAccess;
using System.Transactions;

namespace Demo.IntegrationTesting.Database.Test
{
    [TestClass]
    public class PersonDaoTest
    {
        //on test case init - back restore pe db test
        //inject

        [TestMethod]
        public void PersonDao_GetPersonById()
        {
            using (TransactionScope scope = new TransactionScope())
            {
                Person expected = new Person() { Id = 1, Name = "Andrei", CNP = "1234567890123", Age = 32 };
                PersonArrange.Create(expected);

                PersonDao sut = new PersonDao(PersonArrange.connectionString);
                Person actual = sut.GetPersonById(expected.Id);

                Assert.AreEqual(expected, actual);
            }
        }
    }
}
