#!/usr/bin/env bash

procServ -f -i ^C^D -L - unix:./ioc.sock ./st.cmd
