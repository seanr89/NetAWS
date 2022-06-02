using Microsoft.AspNetCore.Mvc;

namespace MinimalLambda.Controllers;

[ApiController]
[Route("[controller]")]
public class HomeController : ControllerBase
{
    private readonly ILogger<HomeController> _logger;

    public HomeController(ILogger<HomeController> logger)
    {
        _logger = logger;
    }

    // GET calculator/add/4/2/
    [HttpGet("get/")]
    public string Get()
    {
        // _logger.LogInformation($"{x} plus {y} is {x + y}");
        return "Hello from lambda";
    }
}
