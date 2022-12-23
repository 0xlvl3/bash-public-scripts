#!/bin/bash
echo "
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⠀⣀⠀⠀⠀⠀⣀⣀⠀⢀⣠⡄⠀⣀⣤⡄⢀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡀⣠⣾⢀⡴⣿⣿⣾⣿⣤⣾⣿⣾⣿⣿⢞⣿⣿⢷⣿⣿⣿⣿⣿⣛⣤⣴⣶⣢⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⢀⣴⣤⣷⣿⣷⣿⡷⢛⣽⣿⣿⣿⣿⡿⢫⣵⡿⠋⣴⠿⠛⣷⠿⣻⣽⣿⣟⣿⣿⣿⣿⣿⣿⣷⣾⣿⣗⣤⣤⡄⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⣿⣾⣿⡿⣿⠋⠿⠟⠁⠛⠑⠛⠃⠈⠉⠀⠈⠁⠀⠀⠀⠀⠀⠀⠀⠉⢱⡿⠟⢿⣿⠟⣿⣿⣿⣟⣿⣿⣿⣿⣿⣿⣿⣿⣷⣦⣀⣀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣶⡿⠿⠋⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠁⠀⠛⠋⠙⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀
⠀⠀⠀⠀⠀⠀⠀⢀⣼⠟⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠹⡿⣿⣿⣿⣿⣿⣿⡇⠀
⠀⠀⠀⠀⠀⠀⠀⠸⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠿⠿⣿⡿⠟⠀
⠀⠀⠀⠀⠀⠀⢀⠀⠀⠀⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠀⠀⠀
⠀⠀⠀⣄⠀⠀⠸⡄⠀⠀⠈⡆⠀⠀⠀⠰⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠘⣆⠀⠀⠘⣄⠀⠀⠻⡄⠀⠀⠀⢧⠀⠰⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠲⠶⠶⠦⢤⣄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⢦⠀⠀⠀⠈⢧⡀⠀⠘⣆⠀⠀⢳⡀⠀⠀⠘⣇⠀⢹⡀⠀⠶⠒⠚⠛⠛⠛⠛⠛⢛⠛⠛⠛⠛⠒⠲⠤⢌⣉⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠈⠳⣄⠀⠀⠀⢝⢦⣀⠈⢣⡀⢀⠻⣄⢦⡀⠘⣆⢄⢳⡀⡀⠀⣀⠀⠀⣇⠘⣄⡈⣧⡀⣇⠀⢸⠀⢠⠀⢀⠉⠛⠲⠤⣄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠈⠲⣄⠀⢨⣳⣍⠲⣤⡙⢮⣳⣝⢷⣝⣦⣘⣯⣶⣷⣼⣦⣿⣷⣵⣼⣷⣽⣿⣿⣷⣯⣷⣾⣄⣼⡀⢸⡀⡄⡟⠀⢀⠉⠙⠒⠦⢤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠈⠑⢦⣌⠙⢿⣾⣽⣷⣯⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠟⠛⠛⠛⠛⡿⠛⠿⡟⠛⠛⠛⢿⣿⣿⣿⣿⣷⣷⣼⣼⣄⣶⣀⠀⠀⠈⠙⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⣀⠀⠐⠦⣀⠙⠻⢶⣮⣝⣾⢿⣿⣿⡿⠿⠛⠉⠁⠀⠀⠀⠀⠀⠀⠀⢰⣃⣀⣀⠀⠀⠀⠀⠘⢿⣿⣿⡿⣿⣿⣿⣿⣿⣿⣼⡟⣶⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠈⠓⠦⢤⣀⣙⡓⠦⡬⣽⣟⡛⠊⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠀⠚⢛⣃⣀⠀⠀⣠⣾⣿⣿⣿⣿⣿⣿⣩⠿⡿⣿⣿⣷⣏⣿⡷⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠈⠉⠙⠛⣛⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡬⣝⡿⢿⣛⠛⣿⠿⠿⣿⣿⣽⣿⣿⡏⠉⠉⠉⠷⢿⡛⠿⣿⣿⣿⣿⣶⣄⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⢀⠤⢖⣿⣿⣿⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣷⠝⣚⡭⠀⣰⠏⠀⢀⣹⣿⣿⡿⡋⠁⠓⢤⡀⠉⢸⡇⠀⠀⠉⠛⢿⣿⣿⣷⣄⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠁⠀⢀⣵⠾⣿⢿⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣯⠁⡴⠞⡱⠀⣴⣾⡾⢸⣿⣱⡈⢦⠘⣄⠈⢠⡿⠀⠀⠀⠀⠀⠀⠈⢻⠟⣿⣦⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠌⠁⠉⣱⢛⣹⣿⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣆⡜⢀⡼⢹⠃⡇⡀⠸⣇⢧⠈⠳⢄⣵⠟⠁⠀⠀⠀⠀⠀⠀⢀⡼⠞⠉⢿⣷⡀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡼⠁⠛⢵⡿⠻⣿⣦⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⠷⣤⣇⣀⡃⡇⢀⣟⣈⣷⠾⠛⠁⠀⠀⠀⠀⠀⢀⣠⠞⠋⣠⠄⠀⠀⠙⣧⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠀⠀⢠⠎⢀⠞⢁⠟⢛⡿⣦⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠉⠋⠉⠉⠉⠀⠀⠀⠀⣀⣠⡤⢴⠞⠋⠀⢀⡴⠋⠀⠀⠀⠀⠸⣷
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠋⠀⠋⠐⠃⠀⠈⢀⡜⠙⣻⣿⣶⣶⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⡤⠤⠖⢶⠚⠋⠉⠿⠀⠘⠀⣠⠔⠋⠀⠀⠀⠀⠀⠀⠀⠈
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠋⠀⠞⠁⣰⠇⢨⠏⠀⣾⢁⣸⠀⠀⢸⠀⠀⣥⠀⠀⠸⠇⠀⠀⠈⠀⠀⠀⣀⣠⠶⣫⠷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⠋⠀⠞⠀⠐⠛⠊⠛⠃⠀⠿⠃⠀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"⠀

echo ".."
sleep 1
echo "..."
sleep 1
echo "...."

read -p "Welcome which scan would you like to run "

