#!/bin/bash
# Instalar wrk si no lo tienes: sudo apt-get install wrk

date >> test-mobile-stress.txt
echo "Prueba con wrk: 50 conexiones, 3 minutos"

wrk -t12 -c50 -d180s --timeout=30s \
-H "User-Agent: Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36" \
https://webabtest.oep.org.bo/ | tee wrk-report.txt

date >> test-mobile-stress.txt