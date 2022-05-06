using System.Net;
using CloudAPI.Models;
using Microsoft.AspNetCore.Mvc;

namespace CloudAPI.Controllers;

[ApiController]
[Route("api/[controller]")]
public class MerchantController : ControllerBase
{

    private readonly ILogger<MerchantController> _logger;

    public MerchantController(ILogger<MerchantController> logger)
    {
        _logger = logger;
    }

    [HttpGet()]
    public IActionResult Get()
    {
        return Ok("Alive");
    }

    //POST api/[controller]/post
    [HttpPost]
    [ProducesResponseType((int)HttpStatusCode.Created)]
    [ProducesResponseType((int)HttpStatusCode.OK)]
    public IActionResult Post([FromBody] Merchant merchant)
    {
        return Ok("Yay");
    }
}
