FROM yiluxiangbei/canary-platform:20220424

COPY online.conf online.conf

ENTRYPOINT ["python3", "manage.py", "runserver", "0.0.0.0:8080"]