#!/bin/sh

OUTPUT=$(newsboat -x reload print-unread 2>&1)

if echo "$OUTPUT"  | grep -q "Error"; then
    echo ""
else
    echo "$OUTPUT" | grep -o '[0-9]*'
fi
