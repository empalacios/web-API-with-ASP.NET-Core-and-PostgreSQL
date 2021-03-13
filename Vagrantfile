# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "debian/contrib-buster64"

  config.vm.network "private_network", ip: "192.168.56.4"
  config.vm.network "forwarded_port",  guest: 5000, host: 5000

  config.vm.provision "shell", inline: <<-SHELL
    adduser vagrant adm
    
    apt-get update

    # Mono
    apt install -y apt-transport-https dirmngr gnupg ca-certificates
    apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
    echo "deb https://download.mono-project.com/repo/debian stable-buster main" | tee /etc/apt/sources.list.d/mono-official-stable.list
    apt update

    # NuGet
      apt-get install -y nuget
      nuget update -self

    # DotNet Core 5.0
    # Installation information: https://docs.microsoft.com/es-es/dotnet/core/install/linux-debian
      wget https://packages.microsoft.com/config/debian/10/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
      dpkg -i packages-microsoft-prod.deb
      apt-get update
      apt-get install -y apt-transport-https \
        && apt-get update \
        && apt-get install -y dotnet-sdk-5.0


    ## Postgres
      apt-get install -y postgresql

    # Configuracion postgres
      sudo -u postgres psql -c "ALTER ROLE postgres PASSWORD 'postgres';"
      cp /etc/postgresql/11/main/pg_hba.conf     /etc/postgresql/11/main/pg_hba.conf.back
      cp /etc/postgresql/11/main/postgresql.conf /etc/postgresql/11/main/postgresql.conf.back
      cp /vagrant/postgres_config/{pg_hba.conf,postgresql.conf} /etc/postgresql/11/main
      service postgresql reload

    # Creacion de usuario y base de datos para api
      sudo -u postgres psql -c "CREATE USER todoapiuser WITH CREATEDB NOCREATEROLE PASSWORD 'todoapi';"
      psql -Utodoapiuser -h127.0.0.1 postgres -c "CREATE DATABASE todoapibd OWNER todoapiuser encoding 'UTF-8';"
      psql -Utodoapiuser -h127.0.0.1 todoapibd < /vagrant/script_er.sql
  SHELL
end

