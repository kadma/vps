#!/bin/bash

# Función para mostrar el menú
mostrar_menu() {
    clear
    echo "------------------------"
    echo "   MENU DE INSTALACION"
    echo "------------------------"
    echo "1. docker + portainer"
    echo "2. docker + easypanel"
    echo "3. docker + aapanel"
    echo "4. docker + cyberpanel"
    echo "5. docker + cosmos"
    echo "q. Salir"
    echo "------------------------"
}


# Zona de Funcionse
docker_potainer() {
    echo "Instalando Docker y Portanier"
    sudo bash -c "$(wget -qLO - https://raw.githubusercontent.com/kadma/vps/refs/heads/main/instaladores/nuevo%2Bdocker%2Bportainer.sh)"
}

docker_easypanel() {
    echo "Instalando Docker Y Easy Panel"
    sudo bash -c "$(wget -qLO - https://raw.githubusercontent.com/kadma/vps/refs/heads/main/instaladores/nuevo%2Bdocker%2Beasypanel.sh)"
}

docker_aapanel() {
    echo "Instalando Docker Y Aapanel"
    sudo bash -c "$(wget -qLO - https://raw.githubusercontent.com/kadma/vps/refs/heads/main/instaladores/nuevo%2Bdocker%2Baapanel.sh)"
}

docker_cyberpanel() {
    echo "Instalando Docker Y Cyber Panel"
    sudo bash -c "$(wget -qLO - https://raw.githubusercontent.com/kadma/vps/refs/heads/main/instaladores/nuevo%2Bdocker%2Bcyberpanel.sh)"
}

docker_cosmos() {
    echo "Instalando Docker Y Cosmos"
    sudo bash -c "$(wget -qLO - https://raw.githubusercontent.com/kadma/vps/refs/heads/main/instaladores/nuevo%2Bdocker%2Bcosmos.sh)"
}


# Ciclo principal
while true; do
    mostrar_menu
    read -p "Selecciona una opción (1-5) o q para salir: " opcion
    case $opcion in
        1)
            docker_potainer
            exit 0
            ;;
        2)
            docker_easypanel
            exit 0
            ;;
        3)
            docker_aapanel
            exit 0
            ;;
        4)
            docker_cyberpanel
            exit 0
            ;;
        5)
            docker_cosmos
            exit 0
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