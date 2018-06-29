# $OpenBSD: Makefile,v 1.6 2018/06/29 22:16:13 espie Exp $

GAME =		gottet
COMMENT =	Tetris clone game
DISTNAME =	${GAME}-1.1.6-src
REVISION =	1

pre-configure:
	sed -i 's,share/man,man,g' ${WRKSRC}/gottet.pro

.include <bsd.port.mk>
