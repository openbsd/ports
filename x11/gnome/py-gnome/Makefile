# $OpenBSD: Makefile,v 1.45 2013/03/11 11:46:11 espie Exp $

COMMENT=	GNOME Python bindings

GNOME_PROJECT=	gnome-python
GNOME_VERSION=	2.28.1
EXTRACT_SUFX=	.tar.bz2
PKGNAME=	py-gnome-${VERSION}

REVISION=	13

HOMEPAGE=	http://www.pygtk.org/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender Xxf86vm art_lgpl_2 atk-1.0 bonobo-2 bonobo-activation
WANTLIB += bonoboui-2 cairo canberra crypto dbus-1 dbus-glib-1
WANTLIB += drm expat ffi fontconfig freetype gailutil gconf-2
WANTLIB += gcrypt gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gnome-2 gnome-keyring gnomecanvas-2 gnomeui-2
WANTLIB += gnomevfs-2 gobject-2.0 gpg-error gthread-2.0 gtk-x11-2.0
WANTLIB += ltdl m ogg pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png popt pthread-stubs ssl util vorbis vorbisfile
WANTLIB += xcb xcb-render xcb-shm xml2 z stdc++

WANTLIB += ${MODPY_WANTLIB}

MODULES=	devel/gettext \
		lang/python \
		x11/gnome

BUILD_DEPENDS=	${RUN_DEPENDS}
LIB_DEPENDS=	${MODPY_LIB_DEPENDS} \
		x11/gnome/libgnomeui
RUN_DEPENDS=	x11/py-gtk2>=2.10.3 \
		devel/py-orbit

LIBTOOL_FLAGS+=	--tag=disable-static

CONFIGURE_ARGS += --disable-static

pre-configure:
	@find ${WRKDIST} -name \*.py | \
		xargs perl -pi -e 's,/usr/bin/env python,${MODPY_BIN},g'

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-gnome
	cp -R ${WRKSRC}/examples/* ${PREFIX}/share/doc/py-gnome
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/doc/py-gnome
	rm ${PREFIX}/lib/gnome-vfs-2.0/modules/*.la
	rm ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/gtk-2.0/*.la
	rm ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/gtk-2.0/bonobo/*.la
	rm ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/gtk-2.0/gnome/*.la
	rm ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/gtk-2.0/gnomevfs/*.la
	
do-test: fake
	cd ${WRKSRC}/tests && \
		env PYTHONPATH="${WRKINST}${MODPY_LIBDIR}/site-packages/gtk-2.0" ${MODPY_BIN} runtests.py

.include <bsd.port.mk>
