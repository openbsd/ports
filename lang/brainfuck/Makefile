# $OpenBSD: Makefile,v 1.2 2019/07/12 20:47:16 sthen Exp $

GH_ACCOUNT =	fabianishere
GH_PROJECT =	brainfuck
GH_TAGNAME =	2.7.1

COMMENT =	Brainfuck interpreter written in C
CATEGORIES =	lang

MAINTAINER =	Nayden Markatchev <nayden@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += c curses edit

MODULES =	devel/cmake

NO_TEST =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/brainfuck
	${INSTALL_DATA} ${WRKSRC}/examples/* ${PREFIX}/share/examples/brainfuck/

.include <bsd.port.mk>
