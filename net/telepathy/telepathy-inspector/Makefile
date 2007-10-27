# $OpenBSD: Makefile,v 1.1.1.1 2007/10/27 16:18:54 jasper Exp $

COMMENT=		display information about a given connection manager

DISTNAME=		telepathy-inspector-0.5.0

HOMEPAGE=		http://telepathy.freedesktop.org/wiki/TelepathyInspector

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=tapioca-voip/}

MODULES=		devel/gettext

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 c cairo dbus-1 expat \
		fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 \
		glitz gmodule-2.0 gobject-2.0 gtk-x11-2.0 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 png pthread xml2 z

LIB_DEPENDS=		glade-2.0::devel/libglade2 \
			dbus-glib-1::x11/dbus-glib
BUILD_DEPENDS=		:scons-*:devel/scons

NO_REGRESS=		Yes

do-build:
	@${SETENV} ${MAKE_ENV} scons -C ${WRKSRC} \
		CC=${CC} CXX=${CXX} APPEND_CCFLAGS="${CFLAGS}" \
		prefix=${PREFIX} debug=0

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/telepathy-inspector ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/telepathy-inspector
	${INSTALL_DATA} ${WRKSRC}/data/*xml ${PREFIX}/share/telepathy-inspector

.include <bsd.port.mk>
