# $OpenBSD: Makefile,v 1.19 2009/11/24 09:01:47 ajacoutot Exp $

COMMENT=	additional Python bindings for GNOME

GNOME_PROJECT=	gnome-python-extras
GNOME_VERSION=	2.25.3
PKGNAME=	py-gnome-extras-${VERSION}p2

HOMEPAGE=	http://www.pygtk.org/

# GPLv2/LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender art_lgpl_2 atk-1.0 avahi-client avahi-common
WANTLIB += avahi-glib bonobo-2 bonobo-activation bonoboui-2 cairo
WANTLIB += crypto dbus-1 dbus-glib-1 expat ffi fontconfig freetype
WANTLIB += gailutil gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 glitz gmodule-2.0 gnome-2 gnome-keyring gnomecanvas-2
WANTLIB += gnomeui-2 gnomevfs-2 gobject-2.0 gthread-2.0 gtk-x11-2.0
WANTLIB += m nspr4 pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 plc4 plds4 png popt pthread-stubs ssl stdc++
WANTLIB += util xcb xml2 z

MODULES=		devel/gettext \
			lang/python \
			x11/gnome

BUILD_DEPENDS=		${RUN_DEPENDS} \
			:xulrunner-devel->=1.8,<1.9:devel/xulrunner/1.8,-devel
LIB_DEPENDS=		xulrunner/gtkembedmoz,xulrunner/xpcom:xulrunner->=1.8,<1.9:devel/xulrunner/1.8 \
			gtkspell::textproc/gtkspell \
			enchant::textproc/enchant \
			gdl-1::x11/gnome/gdl \
			gtkhtml-2::x11/gnome/libgtkhtml \
			gda-4.0::x11/gnome/libgda
RUN_DEPENDS=		:py-gnome->=2.20.0:x11/gnome/py-gnome
REGRESS_DEPENDS=	:${PKGNAME}:${BUILD_PKGPATH}

USE_X11=		Yes
LIBTOOL_FLAGS=		--tag=disable-static
AUTOCONF_VERSION=	2.62
CONFIGURE_STYLE=	autoconf
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS= 	--with-gtkmozembed=xulrunner

pre-configure:
	@find ${WRKDIST} -name \*.py | \
		xargs perl -pi -e 's,/usr/bin/env python,${MODPY_BIN},g'

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-gnome-extras
	cd ${WRKSRC}/examples; tar cf - * | tar xf - -C \
		${PREFIX}/share/examples/py-gnome-extras
	chown -R ${SHAREOWN}:${SHAREGRP} \
		${PREFIX}/share/examples/py-gnome-extras

do-regress: fake
	cd ${WRKSRC}/tests && env \
		PYTHONPATH="${WRKINST}${MODPY_LIBDIR}/site-packages/gtk-2.0" \
		${MODPY_BIN} runtests.py

.include <bsd.port.mk>
