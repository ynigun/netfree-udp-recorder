sudo tshark -D
echo "Please enter an interface: "
read interface
sudo tshark -N dnN -i 1 -f "icmp" -Y "icmp.code == 10" -T fields -e ip.dst_host -e udp.dstport -eframe.protocols -E occurrence=l
