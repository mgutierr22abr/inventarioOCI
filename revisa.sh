#!/bin/bash
LOG=$(ls -tr *.log | tail -1)
tail $LOG
