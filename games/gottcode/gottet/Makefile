# $OpenBSD: Makefile,v 1.3 2017/12/27 21:25:55 bcallah Exp $

GAME =		gottet
COMMENT =	Tetris clone game
DISTNAME =	${GAME}-1.1.5-src

pre-configure:
	sed -i 's,share/man,man,g' ${WRKSRC}/gottet.pro

.include <bsd.port.mk>
