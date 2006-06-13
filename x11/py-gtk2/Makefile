# $OpenBSD: Makefile,v 1.14 2006/06/13 13:41:20 bernd Exp $

SHARED_ONLY=	Yes

COMMENT=	"GTK+2 Python bindings"

V=		2.6.3
DISTNAME=	pygtk-${V}
PKGNAME=	py-gtk2-${V}p1
CATEGORIES=	x11

HOMEPAGE=	http://www.pygtk.org/

MAINTAINER=	Michael Coulter <mjc@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_GNOME:=sources/pygtk/2.6/}
EXTRACT_SUFX=	.tar.bz2

WANTLIB=	X11 Xext Xrender atk-1.0.0.0 fontconfig freetype \
		gdk-x11-2.0.801.0 gdk_pixbuf-2.0.801.0 glib-2.0.800.0 \
		gmodule-2.0.800.0 gobject-2.0.800.0 gthread-2.0.800.0 \
		gtk-x11-2.0.801.0 m pango-1.0.0.0 pangoft2-1.0.0.0 \
		pangocairo-1.0.0.0 xml2 z cairo glitz png

MODULES=	devel/gettext lang/python

BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig \
		:py-Numeric-*:math/py-Numeric
LIB_DEPENDS=	glade-2.0.0.0::devel/libglade2

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	PYTHON=${MODPY_BIN}

REGRESS_FLAGS=	DISPLAY=${DISPLAY} XAUTHORITY=${XAUTHORITY}

pre-patch:
	@find ${WRKDIST} -name \*.py | \
	    xargs perl -i -pe 's:^#!/usr/bin/env python:#!${MODPY_BIN}:'

.include <bsd.port.mk>
