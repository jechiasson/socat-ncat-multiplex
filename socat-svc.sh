#more /etc/systemd/system/socat@.service
#more /etc/default/socat-AlarmDecoder.conf

#sudo systemctl restart socat@AlarmDecoder

journalctl -fu socat@AlarmDecoder
