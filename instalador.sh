#!/bin/bash
clear

# Función para mostrar el menú
mostrar_menu() {
    echo "------------------------"
    echo "   MENU DE INSTALACION"
    echo "------------------------"
    echo "1. docker + portainer"
    echo "2. docker + easypanel"
    echo "3. docker + aapanel"
    echo "4. docker + cyberpanel"
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



# Ciclo principal
while true; do
    mostrar_menu
    read -p "Selecciona una opción (1-7): " opcion
    case $opcion in
        1)
            docker_potainer
            ;;
        2)
            docker_easypanel
            ;;
        3)
            docker_aapanel
            ;;
        4)
            docker_cyberpanel
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