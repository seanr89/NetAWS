
using Amazon.DynamoDBv2;
using RDSLambda.Models;

namespace RDSLambda.Repositories;

public class EventRepository : IEventRepository
{
    private readonly IAmazonDynamoDB _dynamoDb;
    private readonly string _tableName;

    public EventRepository(IAmazonDynamoDB dynamoDb, string tableName)
    {
        _dynamoDb = dynamoDb;
        _tableName = tableName;
    }

    public Task<bool> CreateAsync(Event customer)
    {
        throw new NotImplementedException();
    }

    public Task<bool> DeleteAsync(Guid id)
    {
        throw new NotImplementedException();
    }

    public Task<Event> GetAsync(Guid id)
    {
        throw new NotImplementedException();
    }

    public Task<bool> UpdateAsync(Event customer)
    {
        throw new NotImplementedException();
    }
}
