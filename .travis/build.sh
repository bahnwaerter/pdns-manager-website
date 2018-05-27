#!/bin/bash

if ! mkdocs build
then
    exit 1
fi

cd site/
if ! tar -czf ../website.tar.gz *
then
    exit 2
fi

