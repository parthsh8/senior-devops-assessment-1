# Use the official ASP.NET Core runtime as a parent image
FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS base
WORKDIR /backend
EXPOSE 80

# Use the official build image for building the application
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /src
COPY DotNet.Docker.csproj .
RUN dotnet restore "DotNet.Docker.csproj"
COPY . .
WORKDIR "/src"
RUN dotnet build "DotNet.Docker.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "DotNet.Docker.csproj" -c Release -o /app/publish

# Copy the build artifacts to the runtime image
FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "DotNet.Docker.dll"]