# $OpenBSD: Makefile,v 1.51 2017/08/24 10:52:41 sthen Exp $

BROKEN-alpha=	pcre_jit_compile.c:65:2: error: #error Unsupported architecture

PV=		5.6
V=		${PV}.31

WANTLIB-main+=		${COMPILER_LIBCXX} ncurses readline

.include <bsd.port.mk>
