# $OpenBSD: Makefile,v 1.46 2017/06/12 11:48:34 sthen Exp $

BROKEN-alpha=	pcre_jit_compile.c:65:2: error: #error Unsupported architecture

PV=		5.6
V=		${PV}.30
REVISION-intl=	0

WANTLIB-main+=		${LIBCXX} ncurses readline

.include <bsd.port.mk>
