sudo docker compose -f docker-compose.production.yml exec backend python manage.py migrate

sudo docker compose -f docker-compose.production.yml exec backend python manage.py collectstatic
