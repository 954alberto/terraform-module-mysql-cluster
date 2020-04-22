# mysql-operator

The chart version v0.3.9 does not support helm3 so the CRD have been installed in the cluster manually

```bash
kubectl apply -f https://raw.githubusercontent.com/presslabs/mysql-operator/master/charts/mysql-operator/crds/mysql_v1alpha1_mysqlbackup.yaml
kubectl apply -f https://raw.githubusercontent.com/presslabs/mysql-operator/master/charts/mysql-operator/crds/mysql_v1alpha1_mysqlcluster.yaml

customresourcedefinition.apiextensions.k8s.io/mysqlbackups.mysql.presslabs.org created
customresourcedefinition.apiextensions.k8s.io/mysqlclusters.mysql.presslabs.org created

```

There is already a release candidate that has support for Helm3 but it is not on the repo yet 
https://github.com/presslabs/mysql-operator/releases/tag/v0.4.0-rc.1

