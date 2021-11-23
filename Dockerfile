FROM grafana/tanka

RUN apk add curl
RUN curl -L https://github.com/mozilla/sops/releases/download/v3.7.1/sops-v3.7.1.linux \
	-o /usr/local/bin/sops && chmod +x /usr/local/bin/sops

RUN sh -c "$(curl --location https://taskfile.dev/install.sh)" -- -d -b /usr/local/bin
RUN mkdir -p ~/.config/sops/age -p
