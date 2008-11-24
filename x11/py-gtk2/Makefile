# $OpenBSD: Makefile,v 1.30 2008/11/24 17:52:49 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	GTK+2 Python bindings

GNOME_PROJECT=	pygtk
GNOME_VERSION=	2.12.1
PKGNAME=	py-gtk2-${VERSION}p2

CATEGORIES=	x11

HOMEPAGE=	http://www.pygtk.org/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes Xi \
		Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig \
		freetype gdk-x11-2.0.>=802.0 gdk_pixbuf-2.0.>=802.0 \
		glib-2.0.>=1000.0 glitz gmodule-2.0.>=1000.0 \
		gobject-2.0.>=1000.0 gtk-x11-2.0.>=802.0 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png xml2 z

MODULES=	devel/gettext \
		lang/python \
		x11/gnome

BUILD_DEPENDS=	${RUN_DEPENDS}
LIB_DEPENDS=	glade-2.0::devel/libglade2
RUN_DEPENDS=	:py-cairo->=1.2:graphics/py-cairo \
		:py-gobject-*:devel/py-gobject \
		:py-Numeric-*:math/py-Numeric

USE_GMAKE=	No

USE_X11=	Yes
LIBTOOL_FLAGS+=	--tag=disable-static
CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	PYTHON=${MODPY_BIN}

# The regression tests require a running instance of X.
# You will also need to set the XAUTHORITY environment variable to point 
# to the appropriate .Xauthority file. 
REGRESS_IS_INTERACTIVE= Yes
REGRESS_FLAGS=	DISPLAY=${DISPLAY} XAUTHORITY=${XAUTHORITY}

pre-configure:
	@find ${WRKDIST} -name \*.py | \
	    xargs perl -i -pe 's:^#!/usr/bin/env python:#!${MODPY_BIN}:'

.include <bsd.port.mk>
