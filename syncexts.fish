cat codeextensions.txt | while read -l ext; code --install-extension $ext; end
echo "Writing extensions..."
code --list-extensions > codeextensions.txt
echo "Done"
