# Base image (python)
FROM python

# Set the workdir
WORKDIR /src/python

# Copy the sample file
COPY src/python/sample.py .

CMD ["python", "/src/python/sample.py"]