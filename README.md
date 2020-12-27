# Helm chart for cert-manager-issuer

In order to configure cert-manager to begin issuing certificates, first `Issuer` or `ClusterIssuer` resources must be created.
These resources represent a particular signing authority and detail how the certificate requests are going to be honored.
> See: https://cert-manager.io/docs/concepts/issuer/

This chart was created in order to create the needed `ClusterIssuer` resource in the kubernetes cluster using helm, right after installing the cert-manager chart.

The chart will supports creating multi-domain SSL certficate.

For more details on how to configure the chart, check the [cert-manager-issuer/values.yaml](./cert-manager-issuer/values.yaml) file
