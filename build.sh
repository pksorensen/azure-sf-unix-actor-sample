#!/bin/bash
DIR=`dirname $0`
/opt/microsoft/servicefabric/bin/Fabric/Fabric.Code/dotnet/dotnet restore $DIR/../azure-sf-actor-csharp/src/azure-sf-actor-csharp/ActorServiceSample.Interfaces/project.json -s /opt/microsoft/sdk/servicefabric/csharp/packages -s https://dotnet.myget.org/F/dotnet-core/api/v3/index.json
/opt/microsoft/servicefabric/bin/Fabric/Fabric.Code/dotnet/dotnet build $DIR/../azure-sf-actor-csharp/src/azure-sf-actor-csharp/ActorServiceSample.Interfaces/project.json

/opt/microsoft/servicefabric/bin/Fabric/Fabric.Code/dotnet/dotnet restore $DIR/../azure-sf-actor-csharp/src/azure-sf-actor-csharp/ActorServiceSample/project.json -s /opt/microsoft/sdk/servicefabric/csharp/packages -s https://dotnet.myget.org/F/dotnet-core/api/v3/index.json
/opt/microsoft/servicefabric/bin/Fabric/Fabric.Code/dotnet/dotnet build $DIR/../azure-sf-actor-csharp/src/azure-sf-actor-csharp/ActorServiceSample/project.json
/opt/microsoft/servicefabric/bin/Fabric/Fabric.Code/dotnet/dotnet publish $DIR/../azure-sf-actor-csharp/src/azure-sf-actor-csharp/ActorServiceSample/project.json -o $DIR/../azure-sf-actor-csharp/azure-sf-actor-csharp/ActorServiceSamplePkg/Code


/opt/microsoft/servicefabric/bin/Fabric/Fabric.Code/dotnet/dotnet restore $DIR/../azure-sf-actor-csharp/src/azure-sf-actor-csharp/ActorServiceSampleTestClient/project.json -s /opt/microsoft/sdk/servicefabric/csharp/packages -s https://dotnet.myget.org/F/dotnet-core/api/v3/index.json
/opt/microsoft/servicefabric/bin/Fabric/Fabric.Code/dotnet/dotnet build $DIR/../azure-sf-actor-csharp/src/azure-sf-actor-csharp/ActorServiceSampleTestClient/project.json
/opt/microsoft/servicefabric/bin/Fabric/Fabric.Code/dotnet/dotnet publish $DIR/../azure-sf-actor-csharp/src/azure-sf-actor-csharp/ActorServiceSampleTestClient/project.json -o $DIR/../azure-sf-actor-csharp/ActorServiceSampleTestClient
