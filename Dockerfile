# 
FROM python:3.9


RUN pip install fastapi uvicorn

# 
COPY ./app /app

EXPOSE 80 
# 
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]
