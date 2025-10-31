FROM whanos-python

WORKDIR /app

ONBUILD COPY . .

ONBUILD RUN if [ -f requirements.txt ]; then \
                pip install --no-cache-dir -r requirements.txt; \
            fi

ONBUILD EXPOSE 8080

ENTRYPOINT ["python"]

CMD ["-m", "app"]
