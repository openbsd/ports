# $OpenBSD: Makefile.inc,v 1.6 2008/06/03 08:14:53 ajacoutot Exp $

CATEGORIES=	x11
DIST_SUBDIR=	xfce4

USE_LIBTOOL?=	Yes
USE_X11=	Yes

MODULES?=	devel/gettext \
		textproc/intltool

CONFIGURE_STYLE?=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
