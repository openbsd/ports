# $OpenBSD: Makefile,v 1.21 2009/10/11 17:14:20 jasper Exp $

COMMENT=	GNOME Python bindings

GNOME_PROJECT=	gnome-python
GNOME_VERSION=	2.28.0
PKGNAME=	py-gnome-${VERSION}

HOMEPAGE=	http://www.pygtk.org/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender art_lgpl_2 atk-1.0 avahi-client avahi-common
WANTLIB += avahi-glib bonobo-2 bonobo-activation bonoboui-2 cairo
WANTLIB += crypto dbus-1 dbus-glib-1 expat fontconfig freetype
WANTLIB += gailutil gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 glitz gmodule-2.0 gnome-keyring gnomevfs-2
WANTLIB += gobject-2.0 gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png popt pthread-stubs ssl
WANTLIB += util xcb xml2 z

MODULES=	devel/gettext \
		lang/python \
		x11/gnome

BUILD_DEPENDS=	${RUN_DEPENDS}
LIB_DEPENDS=	${MODPY_LIB_DEPENDS} \
		gnomeui-2.>=1800::x11/gnome/libgnomeui \
		gnomecanvas-2::x11/gnome/libgnomecanvas \
		gnome-2::x11/gnome/libgnome
RUN_DEPENDS=	:py-gtk2->=2.10.3:x11/py-gtk2 \
		::devel/py-orbit

USE_X11=	Yes
LIBTOOL_FLAGS+=	--tag=disable-static

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

pre-configure:
	@find ${WRKDIST} -name \*.py | \
		xargs perl -pi -e 's,/usr/bin/env python,${MODPY_BIN},g'

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-gnome
	cp -R ${WRKSRC}/examples/* ${PREFIX}/share/doc/py-gnome
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/doc/py-gnome
	
do-regress: fake
	cd ${WRKSRC}/tests && \
		env PYTHONPATH="${WRKINST}${MODPY_LIBDIR}/site-packages/gtk-2.0" ${MODPY_BIN} runtests.py

.include <bsd.port.mk>
