# $OpenBSD: Makefile,v 1.47 2017/07/16 19:18:59 espie Exp $

BROKEN-alpha=	pcre_jit_compile.c:65:2: error: #error Unsupported architecture

PV=		5.6
V=		${PV}.30
REVISION-intl=	0

WANTLIB-main+=		${COMPILER_LIBCXX} ncurses readline

.include <bsd.port.mk>
