FROM whanos-python

WORKDIR /app

COPY . .

RUN if [ -f requirements.txt ]; then \
                pip install --no-cache-dir -r requirements.txt; \
            fi

EXPOSE 8080

ENTRYPOINT ["python"]

CMD ["-m", "app"]
