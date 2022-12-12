This requires docker installed.

Reproduce creates iptables-nft port range rule with v1.8.8 and dumps it with v1.8.7:
```
iptables-problem]# bash run.sh
Sending build context to Docker daemon  2.048kB
Step 1/2 : FROM fedora:36
 ---> b13e4e1c51fa
Step 2/2 : RUN yum install -y iptables-nft
 ---> Using cache
 ---> 8135a7a3990a
Successfully built 8135a7a3990a
Successfully tagged iptables-problem-f36:latest
Sending build context to Docker daemon  2.048kB
Step 1/2 : FROM fedora:37
 ---> d1cd7f8c89a9
Step 2/2 : RUN yum install -y iptables-nft
 ---> Using cache
 ---> c50684537a14
Successfully built c50684537a14
Successfully tagged iptables-problem-f37:latest
a657df6e00b35e8ef7c4adf038bbdf1c1b799b745e621c21fc383b09980aa97f
> iptables v1.8.7 (nf_tables): table `filter' is incompatible, use 'nft' tool.

iptprob
```

Get incompatibilify error.
