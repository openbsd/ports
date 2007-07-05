# $OpenBSD: Makefile,v 1.2 2007/07/05 22:50:11 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	Gnome2 Python bindings

GNOME_PROJECT=	gnome-python	
GNOME_VERSION=	2.18.2
PKGNAME=	py-gnome-${VERSION}

HOMEPAGE=	http://www.pygtk.org/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcursor Xdmcp \
		Xext Xfixes Xi Xinerama Xrandr Xrender art_lgpl_2 \
		atk-1.0 audiofile bonobo-2 bonobo-activation \
		bonoboui-2 cairo crypto dbus-1 dbus-glib-1 esd expat \
		fontconfig freetype gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 \
		glib-2.0 glitz gmodule-2.0 gnome-2 gnome-keyring \
		gnomecanvas-2 gnomevfs-2 gobject-2.0 gthread-2.0 \
		gtk-x11-2.0 iconv intl jpeg m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 png popt ssl util xml2 z

MODULES=	lang/python \
		x11/gnome
BUILD_DEPENDS=	${RUN_DEPENDS}
LIB_DEPENDS=	python${MODPY_VERSION}:python-${MODPY_VERSION}*:lang/python/${MODPY_VERSION} \
		gnomeui-2.>=1800::x11/gnome/libgnomeui
RUN_DEPENDS=	:py-gtk2->=2.10.3:x11/py-gtk2 \
		::devel/py-orbit

USE_X11=	Yes
LIBTOOL_FLAGS+=	--tag=disable-static

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		PYTHON=${MODPY_BIN}
CONFIGURE_ARGS=	--with-gnome-config=${LOCALBASE}/bin/gnome-config

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
