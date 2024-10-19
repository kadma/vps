#!/bin/bash
clear

# Función para mostrar el menú
mostrar_menu() {
    echo "------------------------"
    echo "   MENU DE INSTALACION"
    echo "------------------------"
    echo "1. docker"
    echo "2. bashrc"
    echo "3. firefox fix"
    echo "4. mkvtoolnix + qbittorrent + freedownloadmanager"
    echo "q. Salir"
    echo "------------------------"
}


# Zona de Funcionse
solo_docker() {
    echo "Instalando Docker"
    sudo bash -c "$(wget -qLO - https://raw.githubusercontent.com/kadma/vps/refs/heads/main/herramientas/install-docker.sh)"
}

bashrc() {
    echo "Instalando Docker"
    sudo bash -c "$(wget -qLO - https://raw.githubusercontent.com/kadma/vps/refs/heads/main/herramientas/bashrc.sh)"
}

firefox_fix() {
    echo "Arreglando Firefox."
    sudo bash -c "$(wget -qLO - https://raw.githubusercontent.com/kadma/vps/refs/heads/main/herramientas/firefox%20fix.sh)"
}

mkv_qbit_fdm() {
    echo "Instalando Mkvtoolnix, qbittorrent y FreeDownloadManager"
    sudo bash -c "$(wget -qLO - https://raw.githubusercontent.com/kadma/vps/refs/heads/main/herramientas/nuevo%2Bmkvtoolnix%2Bqbittorrent%2Bfreedownloadmanager.sh)"
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
            bashrc
            ;;
        3)
            firefox_fix
            ;;
        4)
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