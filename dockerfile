ARG DOTNET_VERSION
FROM mcr.microsoft.com/dotnet/sdk

ARG SONAR_SCANNER_VERSION

ENV PATH="${PATH}:/root/.dotnet/tools"

RUN apt update \
    && apt install -y default-jdk \
    && dotnet tool install --global dotnet-sonarscanner