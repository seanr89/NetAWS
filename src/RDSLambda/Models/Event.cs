namespace RDSLambda.Models;

public class Event
{
    public Guid Id { get; init; } = new Guid();
    /// <summary>
    /// The name of an event
    /// </summary>
    /// <value></value>
    public string Name { get; set; }
    public DateTime Date { get; set; }
    /// <summary>
    /// Duration of event in minutes
    /// </summary>
    /// <value></value>
    public int Duration { get; set; }
    /// <summary>
    /// Basic string representation of the event location
    /// </summary>
    /// <value></value>
    public string Location { get; set; }
    /// <summary>
    /// Controls if the event should be visible or not to all
    /// </summary>
    /// <value></value>
    public bool Private { get; set; }
    /// <summary>
    /// Name/Email of the person who created the event!
    /// </summary>
    /// <value></value>
    public string Creator { get; set; }
}