#!/bin/sh
#
# $OpenBSD: prover9-mace4.sh,v 1.1.1.1 2011/03/07 22:26:24 jasper Exp $
#
# Wrapper script to call the actual prover9-mace4.py script

${MODPY_BIN} ${TRUEPREFIX}/libexec/prover9/p9m4/prover9-mace4.py "$@"
