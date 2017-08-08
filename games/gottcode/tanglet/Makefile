# $OpenBSD: Makefile,v 1.10 2017/08/08 15:15:52 bcallah Exp $

GAME =		tanglet
COMMENT =	word finding game
DISTNAME =	${GAME}-1.5.0-src
WANTLIB +=	z

RUN_DEPENDS +=	misc/shared-mime-info

post-install:
	mv ${PREFIX}/share/man/man6/${GAME}.6 ${PREFIX}/man/man6
	rm -Rf ${PREFIX}/share/man/

.include <bsd.port.mk>
