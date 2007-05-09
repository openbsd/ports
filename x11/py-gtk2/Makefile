# $OpenBSD: Makefile,v 1.23 2007/05/09 21:35:52 alek Exp $

SHARED_ONLY=	Yes

COMMENT=	"GTK+2 Python bindings"

V=		2.10.4
DISTNAME=	pygtk-${V}
PKGNAME=	py-gtk2-${V}
CATEGORIES=	x11

HOMEPAGE=	http://www.pygtk.org/

MAINTAINER=	Michael Coulter <mjc@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_GNOME:=sources/pygtk/${V:R}/}
EXTRACT_SUFX=	.tar.bz2

WANTLIB=	X11 Xext Xrender atk-1.0 fontconfig freetype \
		gdk-x11-2.0.>=802.0 gdk_pixbuf-2.0.>=802.0 glib-2.0.>=1000.0 \
		gmodule-2.0.>=1000.0 gobject-2.0.>=1000.0 \
		gtk-x11-2.0.>=802.0 m pango-1.0 pangoft2-1.0 \
		pangocairo-1.0 xml2 z cairo glitz png
WANTLIB += Xau Xcursor Xdmcp Xfixes Xi Xinerama Xrandr expat

MODULES=	devel/gettext lang/python

BUILD_DEPENDS=	${RUN_DEPENDS}
LIB_DEPENDS=	glade-2.0::devel/libglade2
RUN_DEPENDS=	:py-cairo->=1.2:graphics/py-cairo \
		:py-gobject-*:devel/py-gobject \
		:py-Numeric-*:math/py-Numeric

USE_X11=	Yes
USE_LIBTOOL=	Yes
LIBTOOL_FLAGS+=	--tag=disable-static
CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	PYTHON=${MODPY_BIN}

# The regression tests require a running instance of X.
# You will also need to set the XAUTHORITY environment variable to point 
# to the appropriate .Xauthority file. 

REGRESS_IS_INTERACTIVE= Yes
REGRESS_FLAGS=	DISPLAY=${DISPLAY} XAUTHORITY=${XAUTHORITY}

pre-patch:
	@find ${WRKDIST} -name \*.py | \
	    xargs perl -i -pe 's:^#!/usr/bin/env python:#!${MODPY_BIN}:'

.include <bsd.port.mk>
