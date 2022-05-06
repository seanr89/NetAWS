
using CloudAPI.Models;
using Microsoft.EntityFrameworkCore;

namespace CloudAPI.Repositories;

public class AppDbContext: DbContext
	{
		public AppDbContext(DbContextOptions options)
				: base(options)
		{
		}

		public DbSet<Merchant> Merchants { get; set; }
	}