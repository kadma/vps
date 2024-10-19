#!/bin/bash
clear

# Función para mostrar el menú
mostrar_menu() {
    echo "------------------------"
    echo "   MENU DE INSTALACION"
    echo "------------------------"
    echo "1. docker"
    echo "1. firefox fix"
    echo "1. bashrc"
    echo "2. mkvtoolnix + qbittorrent + freedownloadmanager"
    echo "q. Salir"
    echo "------------------------"
}


# Zona de Funcionse
solo_docker() {
    echo "Instalando Docker"
    sudo bash -c "$(wget -qLO - https://raw.githubusercontent.com/kadma/vps/main/install-docker.sh)"
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
        5)
            mkv_qbit_fdm
            ;;
        q)
            clear
            exit 0
            ;;
        *)
            echo "Opción no válida. Inténtalo de nuevo."
            ;;
    esac
done