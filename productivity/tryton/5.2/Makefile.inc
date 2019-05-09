# $OpenBSD: Makefile.inc,v 1.1.1.1 2019/05/09 11:48:50 semarie Exp $

TRYTON_VERSION =	5.2
TRYTON_VERSION_COMPAT =	>=5.2,<5.3
PORTROACH =		limit:^5\.2

.include "../Makefile.inc"
