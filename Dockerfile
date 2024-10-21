FROM public.ecr.aws/lambda/python:3.11

COPY requeriments.txt ${LAMBDA_TASK_ROOT}

RUN pip install -r requeriments.txt

COPY ondex.py ${LAMBDA_TASK_ROOT}

CMD ["ondex.myVersion"]