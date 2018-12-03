# $OpenBSD: Makefile.inc,v 1.1.1.1 2018/12/03 12:28:12 semarie Exp $

TRYTON_VERSION =	5.0
TRYTON_VERSION_COMPAT =	>=5.0,<5.1
PORTROACH =		limit:^5\.0

.include "../Makefile.inc"
