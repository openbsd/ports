COMMENT=		wm-dockapp; temperature sensor monitor

DISTNAME=		wmtempmon-0.3
REVISION=		0
CATEGORIES=		sysutils x11 x11/windowmaker
SITES=			https://www.nazgul.ch/dev/

HOMEPAGE=		https://nazgul.ch/dev_wmtempmon.html

MAINTAINER=		Marcus Glocker <marcus@nazgul.ch>

# BSD
PERMIT_PACKAGE=		Yes
WANTLIB=		X11 Xext Xpm c m xcb

NO_TEST=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/wmtempmon ${PREFIX}/bin/wmtempmon
	${INSTALL_MAN} ${WRKSRC}/wmtempmon.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
