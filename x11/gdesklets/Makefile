# $OpenBSD: Makefile,v 1.29 2013/03/11 11:46:09 espie Exp $

SHARED_ONLY=		Yes

COMMENT=		mini programs for your desktop

V=			0.36.3
DISTNAME=		gdesklets-${V}
REVISION=		3

EXTRACT_SUFX=		.tar.bz2

CATEGORIES=		x11

HOMEPAGE=		http://gdesklets.de/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}files/

MODULES=		devel/gettext \
			lang/python \
			textproc/intltool

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 cairo croco-0.6 \
		expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 rsvg-2 \
		gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 \
		gtk-x11-2.0 kvm m pango-1.0 pangocairo-1.0 ffi gtop-2.0 \
		pangoft2-1.0 pcre pixman-1 png xml2 z pthread-stubs xcb \
		gthread-2.0 xcb-render GL Xxf86vm drm xcb-shm

LIB_DEPENDS=		devel/libgtop2 \
			x11/gnome/librsvg

BUILD_DEPENDS=		${RUN_DEPENDS} \
			${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/libtool

RUN_DEPENDS=		devel/desktop-file-utils \
			misc/shared-mime-info \
			x11/gnome/py-gnome \
			x11/gtk+2,-guic

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
LIBTOOL_FLAGS=		--tag=disable-static

AUTOCONF_VERSION=	2.62
AUTOMAKE_VERSION=	1.9

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--disable-static

MODPY_ADJ_FILES=contrib/gdesklets-migration-tool \
		ctrlinfo \
		gdesklets \
		gdesklets-daemon \
		gdesklets-logview \
		gdesklets-shell \
		test-control.py

FAKE_FLAGS=	autostartdir=${PREFIX}/share/examples/gdesklets/xdg/autostart/

pre-configure:
	cd ${WRKSRC} && ${SETENV} AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} autoreconf -s -i

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py ${PREFIX}/lib/gdesklets

.include <bsd.port.mk>
