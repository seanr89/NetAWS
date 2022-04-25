

namespace CloudAPI.Models;

public class Merchant
{
    public Guid Id { get; set; }
    
    public string Name { get; set; }

    public int Code { get; set; }

    public bool Active { get; set; }
}