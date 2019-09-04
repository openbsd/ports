# $OpenBSD: Makefile.inc,v 1.2 2019/09/04 15:14:41 semarie Exp $

TRYTON_VERSION =	5.2
TRYTON_VERSION_COMPAT =	>=5.2,<5.3
PORTROACH +=		limit:^5\.2

.include "../Makefile.inc"
