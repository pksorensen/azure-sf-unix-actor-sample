#!/bin/bash

azure servicefabric application delete fabric:/azure-sf-actor-csharp
azure servicefabric application type unregister azure-sf-actor-csharpType 1.0.0
