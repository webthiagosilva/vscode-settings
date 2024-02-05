# Definindo variáveis para reutilização
IMAGE_NAME=workspace-dev
CONTAINER_NAME=my-dev-environment
HOST_PORT_PHP=9000
CONTAINER_PORT_PHP=9000
HOST_PORT_NODE=3000
CONTAINER_PORT_NODE=3000
HOST_DIR=$(PWD)
CONTAINER_DIR=/workspace

# Construir a imagem Docker a partir do Dockerfile
build:
	docker build -t $(IMAGE_NAME) .

# Executar o container, montando o volume e mapeando as portas para PHP e Node.js
run:
	docker run -d -p $(HOST_PORT_PHP):$(CONTAINER_PORT_PHP) -p $(HOST_PORT_NODE):$(CONTAINER_PORT_NODE) --name $(CONTAINER_NAME) \
		-v $(HOST_DIR):$(CONTAINER_DIR) \
		$(IMAGE_NAME)

add-ssh-key:
	docker exec -it $(CONTAINER_NAME) ssh-keygen -t rsa -b 4096 -C "" -f ~/.ssh/id_rsa -N "" && \
	docker exec -it $(CONTAINER_NAME) cat ~/.ssh/id_rsa.pub

# Iniciar um shell interativo dentro do container (útil para debugging)
shell:
	docker exec -it $(CONTAINER_NAME) /bin/bash

# Parar o container
stop:
	docker stop $(CONTAINER_NAME)

# Remover o container
remove:
	docker rm $(CONTAINER_NAME)

# Remover a imagem
remove-image:
	docker rmi $(IMAGE_NAME)

# Limpar tudo (container e imagem)
clean: stop remove remove-image

# Comando padrão quando apenas `make` é chamado
all: build run


