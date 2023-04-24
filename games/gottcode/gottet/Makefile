GAME =		gottet
COMMENT =	Tetris clone game
DISTNAME =	${GAME}-1.1.9-src
REVISION =	0

pre-configure:
	sed -i 's,share/man,man,g' ${WRKSRC}/gottet.pro

.include <bsd.port.mk>
