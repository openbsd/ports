# $OpenBSD: Makefile,v 1.16 2018/07/01 18:33:36 espie Exp $

GAME =		tanglet
COMMENT =	word finding game
DISTNAME =	${GAME}-1.5.2-src
WANTLIB +=	z
REVISION =	2

RUN_DEPENDS +=	misc/shared-mime-info

post-install:
	mv ${PREFIX}/share/man/man6/${GAME}.6 ${PREFIX}/man/man6
	rm -Rf ${PREFIX}/share/man/

.include <bsd.port.mk>
