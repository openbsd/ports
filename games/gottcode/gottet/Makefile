# $OpenBSD: Makefile,v 1.5 2018/06/27 21:03:46 espie Exp $

GAME =		gottet
COMMENT =	Tetris clone game
DISTNAME =	${GAME}-1.1.6-src
REVISION =	0

pre-configure:
	sed -i 's,share/man,man,g' ${WRKSRC}/gottet.pro

.include <bsd.port.mk>
