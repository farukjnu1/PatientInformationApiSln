using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;
using PatientInformationApi.Models;
using PatientInformationApi.Repo;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.

builder.Services.AddControllers();
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();

builder.Services.AddSwaggerGen();

var connectionString = builder.Configuration.GetConnectionString("HospitalDbContext");
builder.Services.AddDbContext<hospitaldbContext>(options => {
    options.UseSqlServer(connectionString);
});

builder.Services.AddScoped<IPatientRepository, PatientRepository>();

var MyCorsPolicy = "MyCorsPolicy";
builder.Services.AddCors(options =>
{
    options.AddPolicy(name: MyCorsPolicy,
                      builder =>
                      {
                          builder.WithOrigins("http://localhost:5233", "https://localhost:5233")
                          //builder.AllowAnyOrigin()
                            .AllowAnyHeader()
                            .AllowAnyMethod()
                            .AllowCredentials();
                          //.WithMethods("OPTIONS", "GET");
                      });
});

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseCors(MyCorsPolicy);

app.UseAuthorization();

app.MapControllers();

app.Run();