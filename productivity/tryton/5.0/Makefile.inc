# $OpenBSD: Makefile.inc,v 1.2 2019/09/04 15:14:41 semarie Exp $

TRYTON_VERSION =	5.0
TRYTON_VERSION_COMPAT =	>=5.0,<5.1
PORTROACH +=		limit:^5\.0

.include "../Makefile.inc"
