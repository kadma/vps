#!/bin/bash
clear

# Función para mostrar el menú
mostrar_menu() {
    echo "------------------------"
    echo "   MENU DE INSTALACION"
    echo "------------------------"
    echo "1. docker"
    echo "2. docker + portainer"
    echo "3. docker + easypanel"
    echo "4. docker + aapanel"
    echo "5. docker + cyberpanel"
    echo "6. mkvtoolnix + qbittorrent + freedownloadmanager"
    echo "7. Salir"
    echo "------------------------"
}


# Zona de Funcionse
solo_docker() {
    echo "Instalando Docker"
    sudo bash -c "$(wget -qLO - https://raw.githubusercontent.com/kadma/vps/main/install-docker.sh)"
}

docker_potainer() {
    echo "Instalando Docker y Portanier"
    sudo bash -c "$(wget -qLO - https://raw.githubusercontent.com/kadma/vps/main/nuevo%2Bdocker%2Bportainer.sh)"
}

docker_easypanel() {
    echo "Instalando Docker Y Easy Panel"
    sudo bash -c "$(wget -qLO - https://raw.githubusercontent.com/kadma/vps/main/nuevo%2Bdocker%2Beasypanel.sh)"
}

docker_aapanel() {
    echo "Instalando Docker Y Aapanel"
    sudo bash -c "$(wget -qLO - )"
}

docker_cyberpanel() {
    echo "Instalando Docker Y Cyber Panel"
    sudo bash -c "$(wget -qLO - https://raw.githubusercontent.com/kadma/vps/refs/heads/main/nuevo%2Bdocker%2Bcyberpanel.sh)"
}

mkv_qbit_fdm() {
    echo "Instalando Mkvtoolnix, qbittorrent y FreeDownloadManager"
    sudo bash -c "$(wget -qLO - https://raw.githubusercontent.com/kadma/vps/main/nuevo%2Bmkvtoolnix%2Bqbittorrent%2Bfreedownloadmanager.sh)"
}



# Ciclo principal
while true; do
    mostrar_menu
    read -p "Selecciona una opción (1-7): " opcion
    case $opcion in
        1)
            solo_docker
            ;;
        2)
            docker_potainer
            ;;
        3)
            docker_easypanel
            ;;
        4)
            docker_aapanel
            ;;
        5)
            docker_cyberpanel
            ;;
        6)
            mkv_qbit_fdm
            ;;
        7)
            clear
            echo "Chau"
            exit 0
            ;;
        *)
            echo "Opción no válida. Inténtalo de nuevo."
            ;;
    esac
done