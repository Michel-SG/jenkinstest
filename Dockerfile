# Utilisation de la syntaxe avancée pour build check
# syntax=docker/dockerfile:1
# check=error=true

# Container image that runs your code
FROM httpd:2.4

# Expose port
EXPOSE 80