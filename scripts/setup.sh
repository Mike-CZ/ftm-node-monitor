#!/bin/bash

SCRIPTS_DIR=$(cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd)
ROOT_DIR=$(dirname "$SCRIPTS_DIR")

DATA_PATH="$ROOT_DIR/.data";
if [[ ! -d ${DATA_PATH} ]]; then
    echo "Creating data directory: ${DATA_PATH}";
    mkdir ${DATA_PATH};
fi

PROMETHEUS_DATA_PATH="$DATA_PATH/prometheus";
if [[ ! -d ${PROMETHEUS_DATA_PATH} ]]; then
    echo "Creating prometheus data directory: ${PROMETHEUS_DATA_PATH}";
    mkdir ${PROMETHEUS_DATA_PATH};
fi

GRAFANA_DATA_PATH="$DATA_PATH/grafana";
if [[ ! -d ${GRAFANA_DATA_PATH} ]]; then
    echo "Creating grafana data directory: ${GRAFANA_DATA_PATH}";
    mkdir ${GRAFANA_DATA_PATH};
fi