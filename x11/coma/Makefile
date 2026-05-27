COMMENT =	keyboard driven tiling window manager

DISTNAME =	coma-1.2

CATEGORIES =	x11

HOMEPAGE =	https://github.com/jorisvink/coma

# ISC
PERMIT_PACKAGE =	Yes

WANTLIB +=	X11 Xft c

SITES =		https://hackhub.se/releases/

MAKE_FLAGS +=	PREFIX=${PREFIX} MAN_DIR=${PREFIX}/man

NO_TEST =	Yes

pre-install:
	@sed -i 's,zsh,sh,' ${WRKSRC}/scripts/*

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/coma
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/coma

.include <bsd.port.mk>
