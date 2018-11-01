using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Demo.IntegrationTesting.Database.Model
{
    public class Person
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string CNP { get; set; }
        public int Age { get; set; }

        public override int GetHashCode()
        {
            return Id.GetHashCode();
        }

        public override bool Equals(object obj)
        {
            if(obj is Person)
            {
                Person target = (Person)obj;

                return (this.Id == target.Id && this.Name == target.Name && this.CNP == target.CNP && this.Age == target.Age);
            }

            return false;
        }
    }
}
