# $OpenBSD: Makefile,v 1.17 2018/07/21 05:35:38 bcallah Exp $

GAME =		tanglet
COMMENT =	word finding game
DISTNAME =	${GAME}-1.5.3-src
WANTLIB +=	z

RUN_DEPENDS +=	misc/shared-mime-info

post-install:
	mv ${PREFIX}/share/man/man6/${GAME}.6 ${PREFIX}/man/man6
	rm -Rf ${PREFIX}/share/man/

.include <bsd.port.mk>
