# $OpenBSD: Makefile,v 1.49 2017/08/24 09:45:23 sthen Exp $

BROKEN-alpha=	pcre_jit_compile.c:65:2: error: #error Unsupported architecture

PV=		5.6
V=		${PV}.30
REVISION=	2

WANTLIB-main+=		${COMPILER_LIBCXX} ncurses readline

.include <bsd.port.mk>
