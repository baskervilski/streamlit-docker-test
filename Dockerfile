FROM python:3.8-slim
COPY requirements.txt /tmp/
RUN pip install --no-cache-dir -r /tmp/requirements.txt
COPY . /app
WORKDIR /app
CMD ["streamlit", "run", "streamlit_demo.py"]