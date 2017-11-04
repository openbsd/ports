# $OpenBSD: Makefile,v 1.2 2017/11/04 22:44:49 bentley Exp $

GAME =		gottet
COMMENT =	Tetris clone game
DISTNAME =	${GAME}-1.1.4-src
REVISION =	0

pre-configure:
	sed -i 's,share/man,man,g' ${WRKSRC}/gottet.pro

.include <bsd.port.mk>
