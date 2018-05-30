# $OpenBSD: Makefile,v 1.4 2018/05/30 03:06:33 bcallah Exp $

GAME =		gottet
COMMENT =	Tetris clone game
DISTNAME =	${GAME}-1.1.6-src

pre-configure:
	sed -i 's,share/man,man,g' ${WRKSRC}/gottet.pro

.include <bsd.port.mk>
