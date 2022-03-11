COMMENT=		wm-dockapp; A popup menu of icons that launch programs

DISTNAME=		wmmenu-1.3

CATEGORIES=		x11 x11/windowmaker

HOMEPAGE=		https://www.dockapps.net/wmmenu

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB=		X11 Xext Xpm c m dockapp

MASTER_SITES=		https://www.dockapps.net/download/


LIB_DEPENDS=		devel/libdockapp>=0.7.3

FLAVORS=		gdk_pixbuf
FLAVOR?=

.if ${FLAVOR:Mgdk_pixbuf}
MAKE_FLAGS=		GDKPIXBUF2=1
LIB_DEPENDS+=		graphics/gdk-pixbuf-xlib
WANTLIB += gdk_pixbuf-2.0 gdk_pixbuf_xlib-2.0 glib-2.0 gobject-2.0
WANTLIB += intl
.endif

WRKDIST=		${WRKDIR}/dockapps


CFLAGS+=		-I${X11BASE}/include
LDFLAGS+=		-L${X11BASE}/lib

MAKE_ENV+=		CFLAGS="${CFLAGS}" LDFLAGS="${LDFLAGS}"

pre-configure:
	@perl -pi -e 's#%%PREFIX%%#${PREFIX}#' ${WRKSRC}/example/defaults

NO_TEST=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/wmmenu ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/wmmenu
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/wmmenu
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/wmmenu/
	${INSTALL_DATA} ${WRKSRC}/example/apps ${PREFIX}/share/examples/wmmenu/
	${INSTALL_DATA} ${WRKSRC}/example/defaults ${PREFIX}/share/examples/wmmenu/

.include <bsd.port.mk>
