using System.Collections.Generic;
using System.Linq;
using Microsoft.AspNet.Mvc;

namespace src.Controllers
{
    [Route("api/[controller]")]
    public class ProjectsController
    {
        static readonly List<Project> Projects = new List<Project>
        {
            new Project {id = 1, name = "Heart Beat"}, 
            new Project {id = 2, name = "Bootcamp"}, 
            new Project {id = 3, name = "Paradise"}, 
            new Project {id = 4, name = "Eden"}, 
        };

        [HttpGet]
        public IEnumerable<Project> Get()
        {
            return Projects;
        }

        [HttpGet("{id}")]
        public Project Get(int id)
        {
            return Projects.SingleOrDefault(p => p.id == id);
        }
    }

    public class Project
    {
        public int id { get; set; }
        public string name { get; set; }
    }
}