# $OpenBSD: Makefile,v 1.1.1.1 2017/08/08 15:18:36 bcallah Exp $

GAME =		gottet
COMMENT =	Tetris clone game
DISTNAME =	${GAME}-1.1.4-src

pre-configure:
	sed -i 's,share/man,man,g' ${WRKSRC}/gottet.pro

.include <bsd.port.mk>
