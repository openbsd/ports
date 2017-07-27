# $OpenBSD: Makefile,v 1.9 2017/07/27 09:55:44 sthen Exp $

GAME =		tanglet
COMMENT =	word finding game
DISTNAME =	${GAME}-1.4.0-src
WANTLIB +=	z
WANTLIB += ${COMPILER_LIBCXX}
REVISION =	0

RUN_DEPENDS +=	misc/shared-mime-info

post-install:
	mv ${PREFIX}/share/man/man6/${GAME}.6 ${PREFIX}/man/man6
	rm -Rf ${PREFIX}/share/man/

.include <bsd.port.mk>
