# $OpenBSD: Makefile,v 1.48 2017/07/26 22:45:25 sthen Exp $

BROKEN-alpha=	pcre_jit_compile.c:65:2: error: #error Unsupported architecture

PV=		5.6
V=		${PV}.30
REVISION=	1

WANTLIB-main+=		${COMPILER_LIBCXX} ncurses readline

.include <bsd.port.mk>
