# Deploying Cassandra Example - Data on Kubernetes the Hard Way

This example shows how to deploy Cassandra on Kubernetes, starting from a simple Kubernetes cluster.

This is a code example for the O'Reilly book [Managing Cloud-Native Data on Kubernetes](https://learning.oreilly.com/library/view/managing-cloud-native/9781098111380/).

This example was inspired by the [Cassandra tutorial](https://kubernetes.io/docs/tutorials/stateful-application/cassandra/) in the Kubernetes documentation. However, it differs from that tutorial in a few respects:

* You’ll use the official Cassandra Docker image
* You’ll secure the administrator account 
* You’ll use the simple application

## Prerequisites

## Steps

1. First, create some credentials to secure the Cassandra administrator account.

```   
kubectl create secret generic cassandra-admin-secret --from-literal=username=cassandra-admin --from-literal=password=cassandra-admin-password
```

