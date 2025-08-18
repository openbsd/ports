COMMENT=	lightweight NETWM compliant desktop panel

GH_ACCOUNT=	eleksir
# fork; now archived, but at least this has moved to cmake so drops py2 BDEP
GH_PROJECT=	fbpanel
GH_TAGNAME=	7.2
CATEGORIES=	x11

HOMEPAGE=	https://aanatoly.github.io/fbpanel/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 c cairo fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gtk-x11-2.0 harfbuzz intl m
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0

NO_TEST=	Yes

MODULES=	devel/cmake
BUILD_DEPENDS=	graphics/gdk-pixbuf-xlib \
		shells/bash
LIB_DEPENDS=	x11/gtk+2

MODCMAKE_LDFLAGS= -L${X11BASE}/lib -L${LOCALBASE}/lib

post-install:
	rm ${PREFIX}/share/fbpanel/images/battery*

xxdo-install:
	${INSTALL_SCRIPT} ${WRKSRC}/exec/{make_profile,xlogout} ${EXECDIR}/
	${INSTALL_DATA} ${WRKSRC}/data/config/default ${EXAMPLEDIR}/

.include <bsd.port.mk>
