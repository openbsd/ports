# $OpenBSD: Makefile,v 1.50 2017/08/24 10:03:25 sthen Exp $

BROKEN-alpha=	pcre_jit_compile.c:65:2: error: #error Unsupported architecture

PV=		5.6
V=		${PV}.30
REVISION=	2
REVISION-intl=	3

WANTLIB-main+=		${COMPILER_LIBCXX} ncurses readline

.include <bsd.port.mk>
