# Web API with ASP.NET Core and PostgreSQL Database
A tutorial based in the [Tutorial: Create a web API with ASP.NET Core](https://github.com/empalacios/web-API-with-ASP.NET-Core) to use a PostgreSQL Database.

## First steps
Follow the steps in https://github.com/empalacios/web-API-with-ASP.NET-Core repository, as that is the starting point.

## Tutorial Steps
### Add the PostgreSQL Provider
```
cd /vagrant/TodoApi
dotnet add package Npgsql.EntityFrameworkCore.PostgreSQL
```

### Add Mono Most Recent Stable Packages
Add the latest stable Mono repository in order to get the most recent packages when installing NuGet. Updating NuGet breaks itself because of new packages versions needed.
```
apt install apt-transport-https dirmngr gnupg ca-certificates
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb https://download.mono-project.com/repo/debian stable-buster main" | tee /etc/apt/sources.list.d/mono-official-stable.list
apt update
```

## Resources
-  [Create web APIs with ASP.NET Core](https://docs.microsoft.com/en-us/aspnet/core/web-api/?view=aspnetcore-5.0)
-  [Npgsql Entity Framework Core Provider](https://www.npgsql.org/efcore/)
-  [Introducción a EF Core](https://docs.microsoft.com/es-es/ef/core/get-started/overview/first-app?tabs=netcore-cli)
-  [Razor Pages with Entity Framework Core in ASP.NET Core - Tutorial 1 of 8](https://docs.microsoft.com/en-us/aspnet/core/data/ef-rp/intro?view=aspnetcore-5.0&tabs=visual-studio-code)
-  [Download Mono for Debian](https://www.mono-project.com/download/stable/#download-lin-debian)
