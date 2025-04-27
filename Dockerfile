# Use the official .NET image to build the app
FROM mcr.microsoft.com/dotnet/aspnet:5.0 AS base
WORKDIR /app
EXPOSE 80

# Use the SDK image to build the app
FROM mcr.microsoft.com/dotnet/sdk:5.0 AS build
WORKDIR /src
COPY ["YourProjectName/YourProjectName.csproj", "YourProjectName/"]
RUN dotnet restore "YourProjectName/YourProjectName.csproj"
COPY . .
WORKDIR "/src/YourProjectName"
RUN dotnet build "YourProjectName.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "YourProjectName.csproj" -c Release -o /app/publish

# Final stage to run the app
FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "clone.dll"]
