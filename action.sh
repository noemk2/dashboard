#!/bin/bash

sudo apt update && sudo apt upgrade -y && sudo apt install -y build-essential

# Descargar el instalador de Miniconda
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh

# Dar permisos de ejecución al instalador
chmod +x miniconda.sh

# Instalar Miniconda en un directorio específico (puedes cambiar '/opt/miniconda' a tu preferencia)
./miniconda.sh -b -p /home/gitpod/miniconda3

# Agregar el directorio bin de Miniconda al PATH (esto se añadirá automáticamente al final del archivo .bashrc)
echo 'export PATH="/home/gitpod/miniconda3/bin:$PATH"' >> ~/.profile

# Recargar el archivo de perfil para que los cambios en el PATH tengan efecto inmediato
source ~/.profile

# Borrar el instalador
rm miniconda.sh

# echo "Miniconda se ha instalado correctamente."
make env_create
conda init
conda activate dashboard
# make run