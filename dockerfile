#!/bin/bash

FROM mysql:5.7

COPY ./poupa-atendimento/poupa-atendimento-tables.sql/docker-entrypoint-initdb.d/