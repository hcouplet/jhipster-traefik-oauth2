#!/bin/bash

HOME_DIR="$(pwd)"
cd "$HOME_DIR"/app; jhipster
cd "$HOME_DIR"/gateway; jhipster

cd "$HOME_DIR"/app; jhipster  entity testEntity --force
cd "$HOME_DIR"/gateway; jhipster  entity testEntity --force

cd "$HOME_DIR"/app; ./mvnw verify -Pprod dockerfile:build
cd "$HOME_DIR"/gateway; ./mvnw verify -Pprod -DskipTests dockerfile:build

