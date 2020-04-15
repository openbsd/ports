# $OpenBSD: Makefile,v 1.4 2020/04/15 13:31:42 fcambus Exp $

COMMENT =	keyboard driven tiling window manager

DISTNAME =	coma-1.1
REVISION =	0

CATEGORIES =	x11

HOMEPAGE =	https://coma.one/wm/

# ISC
PERMIT_PACKAGE =	Yes

WANTLIB +=	X11 Xft c

MASTER_SITES =	https://coma.one/releases/

NO_TEST =	Yes

pre-install:
	@sed -i 's,zsh,sh,' ${WRKSRC}/scripts/*

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/coma
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/coma

.include <bsd.port.mk>
