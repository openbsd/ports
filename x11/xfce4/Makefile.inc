# $OpenBSD: Makefile.inc,v 1.5 2007/05/16 14:22:40 steven Exp $

CATEGORIES=	x11
DIST_SUBDIR=	xfce4

USE_LIBTOOL?=	Yes
USE_X11=	Yes

MODULES?=	devel/gettext
BUILD_DEPENDS+=	::textproc/intltool

CONFIGURE_STYLE?=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
