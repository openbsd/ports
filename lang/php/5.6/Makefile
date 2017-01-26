# $OpenBSD: Makefile,v 1.44 2017/01/26 23:04:16 sthen Exp $

BROKEN-alpha=	pcre_jit_compile.c:65:2: error: #error Unsupported architecture

PV=		5.6
V=		${PV}.30

WANTLIB-main+=		stdc++ ncurses readline

.include <bsd.port.mk>
