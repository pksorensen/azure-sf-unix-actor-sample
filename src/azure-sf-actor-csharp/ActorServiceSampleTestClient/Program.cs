namespace ActorServiceSampleClient
{
    using System;
    using Microsoft.ServiceFabric.Actors;
    using Microsoft.ServiceFabric.Actors.Client;
    using ActorServiceSample.Interfaces;

    class Program
    {
        static void Main(string[] args)
        {
            var ActorServiceSampleTestClient = ActorProxy.Create<IActorServiceSample>(new ActorId(0x100), "fabric:/azure-sf-actor-csharp" , "ActorServiceSample");
            int result = ActorServiceSampleTestClient.GetCountAsync().Result;
            ActorServiceSampleTestClient.SetCountAsync(result + 1).Wait();
            Console.WriteLine("Value = {0}", result);
        }
    }
}
