# Contar la palabra "echo"
echo "Número de veces que aparece 'echo': $(grep -o "echo" get.docker.com | wc -l)"
