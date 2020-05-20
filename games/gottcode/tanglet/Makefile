# $OpenBSD: Makefile,v 1.21 2020/05/20 14:13:22 bcallah Exp $

GAME =		tanglet
COMMENT =	word finding game
DISTNAME =	${GAME}-1.5.6-src
WANTLIB +=	z

RUN_DEPENDS +=	misc/shared-mime-info

post-install:
	mv ${PREFIX}/share/man/man6/${GAME}.6 ${PREFIX}/man/man6
	rm -Rf ${PREFIX}/share/man/

.include <bsd.port.mk>
