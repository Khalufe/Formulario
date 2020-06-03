using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace Backend.Controllers
{
    public class ValuesController : ApiController
    {
        // GET api/values
        public List<Person> Get()
        {
            var persona1 = new Person()
            {
                Id = "76768",
                name = "Camilo"
            };
            var persona2 = new Person()
            {
                Id = "55246",
                name = "Luisa"
            };
            var personas = new List<Person>();
            personas.Add(persona1);
            personas.Add(persona2);
            
            return personas;
        }

        // GET api/values/5
        public string Get(int id)
        {
            return "value";
        }

        // POST api/values
        public string Post([FromBody] Person person)
        {
            return $"Usted {person.name } con cédula {person.Id } se ha ganado " +
                $"un viaje a Dubai"; 
        }

        // PUT api/values/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE api/values/5
        public void Delete(int id)
        {
        }
    }
    public class Person {
        public string Id { get; set; }
        public string name { get; set; }
    }
}
