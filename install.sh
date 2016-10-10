#!/bin/bash

azure servicefabric application package copy azure-sf-actor-csharp fabric:ImageStore
azure servicefabric application type register azure-sf-actor-csharp
azure servicefabric application create fabric:/azure-sf-actor-csharp  azure-sf-actor-csharpType 1.0.0


