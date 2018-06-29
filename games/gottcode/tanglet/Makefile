# $OpenBSD: Makefile,v 1.15 2018/06/29 22:16:13 espie Exp $

GAME =		tanglet
COMMENT =	word finding game
DISTNAME =	${GAME}-1.5.2-src
WANTLIB +=	z
REVISION =	1

RUN_DEPENDS +=	misc/shared-mime-info

post-install:
	mv ${PREFIX}/share/man/man6/${GAME}.6 ${PREFIX}/man/man6
	rm -Rf ${PREFIX}/share/man/

.include <bsd.port.mk>
