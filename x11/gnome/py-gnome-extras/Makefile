# $OpenBSD: Makefile,v 1.12 2009/04/26 11:01:05 ajacoutot Exp $

COMMENT=	additional Python bindings for GNOME

GNOME_PROJECT=	gnome-python-extras
GNOME_VERSION=	2.19.1
PKGNAME=	py-gnome-extras-${VERSION}p8

HOMEPAGE=	http://www.pygtk.org/

# GPLv2/LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender art_lgpl_2 atk-1.0 bonobo-2 bonobo-activation
WANTLIB += bonoboui-2 cairo crypto dbus-1 dbus-glib-1 enchant
WANTLIB += expat fam fontconfig freetype gailutil gconf-2 gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glade-2.0 glib-2.0 glitz gmodule-2.0
WANTLIB += gnome-2 gnome-keyring gnomecanvas-2 gnomeui-2 gnomevfs-2
WANTLIB += gobject-2.0 gthread-2.0 gtk-x11-2.0 gtop-2.0 kvm m
WANTLIB += nspr4 pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += plc4 plds4 png popt rpcsvc ssl startup-notification-1
WANTLIB += stdc++ util xml2 z

MODULES=		devel/gettext \
			lang/python \
			x11/gnome

BUILD_DEPENDS=		${RUN_DEPENDS} \
			:xulrunner-devel->=1.8:devel/xulrunner,-devel \
			::sysutils/libgksuui
LIB_DEPENDS=		xulrunner/gtkembedmoz,xulrunner/xpcom:xulrunner->=1.8:devel/xulrunner \
			gksu2::sysutils/libgksu \
			gtkspell::textproc/gtkspell \
			gdl-1::x11/gnome/gdl \
			gtkhtml-2::x11/gnome/libgtkhtml \
			gda-3.0.>=1,gdasql-3.0,gda-report-3.0::x11/gnome/libgda
RUN_DEPENDS=		:py-gnome->=2.20.0:x11/gnome/py-gnome \
			::sysutils/libgksuui
REGRESS_DEPENDS=	:${PKGNAME}:${BUILD_PKGPATH}

USE_X11=		Yes
LIBTOOL_FLAGS=		--tag=disable-static
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
