ARG R_VERSION=4.0.4
FROM inseefrlab/rstudio:${R_VERSION} AS renv
LABEL org.opencontainers.image.source https://github.com/MTES-MCT/parcours-r
ENV RENV_VERSION=0.13.2
RUN installGithub.r rstudio/renv@${RENV_VERSION}

FROM renv
COPY renv.lock renv.lock
RUN R -e "renv::restore()"
