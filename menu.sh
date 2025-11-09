#!/bin/bash

while true; do
    clear
    echo "======================================"
    echo "   🧰 System Maintenance Suite"
    echo "======================================"
    echo "1. Run Backup"
    echo "2. Update & Clean System"
    echo "3. Monitor System Logs"
    echo "4. Exit"
    echo "--------------------------------------"
    read -p "Choose an option [1-4]: " choice

    case $choice in
        1)
            ./backup.sh
            ;;
        2)
            ./update_clean.sh
            ;;
        3)
            ./log_monitor.sh
            ;;
        4)
            echo "👋 Exiting... Goodbye!"
            exit 0
            ;;
        *)
            echo "❌ Invalid option! Try again."
            ;;
    esac

    echo ""
    read -p "Press Enter to continue..."
done
