using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;

namespace azweb
{
    [Route("api/config")]
    public class SecretController : Controller
    {
        private readonly IConfiguration _configuration;

        public SecretController(IConfiguration configuration)
        {
            this._configuration = configuration;
        }

        [HttpGet]
        [Route("secret")]
        public string GetSecret()
        {
            return _configuration["secretkey"];
        }
        
        [HttpGet]
        [Route("public")]
        public string GetPublic(){
            return _configuration["nosecretkey"];
        }
    }
}