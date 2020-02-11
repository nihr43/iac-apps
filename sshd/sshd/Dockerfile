FROM alpine:edge

RUN apk add openssh --no-cache
RUN ssh-keygen -t ed25519 -f /etc/ssh/ssh_host_ed25519_key -P '' ;\
    sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin prohibit-password/g' /etc/ssh/sshd_config ;\
    sed -i 's/AllowTcpForwarding no/AllowTcpForwarding yes/g' /etc/ssh/sshd_config ;\
    passwd -u root ;\
    sed -i 's/\/bin\/ash/\/sbin\/nologin/g' /etc/passwd ;\
    mkdir /root/.ssh ;\
    wget https://github.com/nihr43.keys -O /root/.ssh/authorized_keys

EXPOSE 22
ENTRYPOINT [ "/usr/sbin/sshd", "-D" , "-f", "/etc/ssh/sshd_config" ]
