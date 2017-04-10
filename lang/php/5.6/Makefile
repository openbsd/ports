# $OpenBSD: Makefile,v 1.45 2017/04/10 11:46:22 sthen Exp $

BROKEN-alpha=	pcre_jit_compile.c:65:2: error: #error Unsupported architecture

PV=		5.6
V=		${PV}.30

WANTLIB-main+=		${LIBCXX} ncurses readline

.include <bsd.port.mk>
