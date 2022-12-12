docker build -t iptables-problem-f36 f36
docker build -t iptables-problem-f37 f37

# Creates with iptables-nft 1.8.8 a port range rule
docker run --rm --privileged -d --name iptprob iptables-problem-f37 \
	bash -c "iptables -N TEST; iptables -A TEST -p tcp -m tcp --dport 30000:32767 -j ACCEPT; exec sleep inf"
# Dumps with iptables-nft 1.8.7 the above port range rule
docker run --rm --privileged -i --network=container:iptprob iptables-problem-f36 iptables -S
docker rm -f iptprob
