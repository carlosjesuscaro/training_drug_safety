FROM jupyter/datascience-notebook
RUN pip install pandas numpy scikit-learn matplotlib seaborn \
WORKDIR /home/carlos/work/data

COPY notebooks/ .
COPY data/ .

EXPOSE 8888

CMD ["jupyter", "notebook", "--ip", "0.0.0.0", "--allow-root", "--no-browser"]