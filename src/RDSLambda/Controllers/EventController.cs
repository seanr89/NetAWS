using Microsoft.AspNetCore.Mvc;

namespace RDSLambda.Controllers;

[ApiController]
[Route("[controller]")]
public class EventController : ControllerBase
{
    private readonly ILogger<EventController> _logger;

    public EventController(ILogger<EventController> logger)
    {
        _logger = logger;
    }

      // GET calculator/add/4/2/
    [HttpGet("Get")]
    public IActionResult Get()
    {
       // _logger.LogInformation($"{x} plus {y} is {x + y}");
        return Ok();
    }

    [HttpGet("getbyId/{id}")]
    public IActionResult GetById(Guid id)
    {
        //_logger.LogInformation($"{x} plus {y} is {x + y}");
        return Ok(id);
    }
}
