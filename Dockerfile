FROM python:3.11-slim

WORKDIR /app

# entrypoint executa código python inline
ENTRYPOINT ["python", "-c", "\
import time; \
print('App Python rodando 🚀'); \
[print(f'Loop {i}') or time.sleep(1) for i in range(5)] \
"]
