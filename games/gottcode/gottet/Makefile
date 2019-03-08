# $OpenBSD: Makefile,v 1.8 2019/03/08 20:00:46 cwen Exp $

GAME =		gottet
COMMENT =	Tetris clone game
DISTNAME =	${GAME}-1.1.7-src
REVISION =	0

pre-configure:
	sed -i 's,share/man,man,g' ${WRKSRC}/gottet.pro

.include <bsd.port.mk>
