
using RDSLambda.Models;
using RDSLambda.Repositories;

namespace RDSLambda.Services;

public class EventService : IEventService
{
    private readonly IEventRepository _eventRepository;

    public EventService(IEventRepository eventRepository)
    {
        
    }
    
    public Task<bool> CreateAsync(Event evnt)
    {
        throw new NotImplementedException();
    }

    public Task<bool> DeleteAsync(Guid id)
    {
        throw new NotImplementedException();
    }

    public Task<Event?> GetAsync(Guid id)
    {
        throw new NotImplementedException();
    }

    public Task<bool> UpdateAsync(Event evnt)
    {
        throw new NotImplementedException();
    }
}