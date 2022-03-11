GAME =		gottet
COMMENT =	Tetris clone game
DISTNAME =	${GAME}-1.1.9-src

pre-configure:
	sed -i 's,share/man,man,g' ${WRKSRC}/gottet.pro

.include <bsd.port.mk>
