
using RDSLambda.Models;

namespace RDSLambda.Services;

public interface IEventService
{
    Task<bool> CreateAsync(Event evnt);

    Task<Event?> GetAsync(Guid id);

    Task<bool> UpdateAsync(Event evnt);

    Task<bool> DeleteAsync(Guid id);
}