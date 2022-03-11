COMMENT=		wm-dockapp; shows the current date

DISTNAME=		wmdate-0.7
REVISION=		4
CATEGORIES=		x11 x11/windowmaker

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=		X11 Xau Xdmcp Xext Xpm c dockapp

LIB_DEPENDS=		devel/libdockapp>=0.7.3

NO_TEST=		Yes
CONFIGURE_STYLE=	imake noman

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/wmdate
	${INSTALL_DATA} ${WRKSRC}/COPYING ${PREFIX}/share/doc/wmdate

.include <bsd.port.mk>
