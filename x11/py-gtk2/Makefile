# $OpenBSD: Makefile,v 1.49 2011/04/01 11:26:08 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	GTK+2 Python bindings

GNOME_PROJECT=	pygtk
GNOME_VERSION=	2.24.0
PKGNAME=	py-gtk2-${VERSION}

CATEGORIES=	x11

HOMEPAGE=	http://www.pygtk.org/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 cairo drm
WANTLIB += expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glade-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread-stubs xcb xcb-render
WANTLIB += xcb-shm xml2 z

MODULES=	devel/gettext \
		lang/python \
		x11/gnome

BUILD_DEPENDS=	${RUN_DEPENDS}
LIB_DEPENDS=	devel/libglade2
RUN_DEPENDS=	graphics/py-cairo>=1.2 \
		devel/py-gobject>=2.26.0 \
		math/py-numpy

USE_GMAKE=	No

LIBTOOL_FLAGS+=	--tag=disable-static
CONFIGURE_STYLE=gnu

# pick bind_textdomain_codeset
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib -lintl -liconv"

REGRESS_IS_INTERACTIVE= x11

VMEM_WARNING=	Yes

pre-configure:
	@find ${WRKDIST} -name \*.py | \
	    xargs perl -i -pe 's,^#!/usr/bin/env python,#!${MODPY_BIN},'

.include <bsd.port.mk>
