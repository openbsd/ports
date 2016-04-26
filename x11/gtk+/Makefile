# $OpenBSD: Makefile,v 1.86 2016/04/26 16:30:17 naddy Exp $

PORTROACH=	limit:^1\.2\.

COMMENT=	General Toolkit for X11 GUI

DISTNAME=	gtk+-1.2.10
REVISION=	15

SHARED_LIBS=	gdk 3.0 \
		gtk 3.0
CATEGORIES=	x11 devel
MASTER_SITES=   ${MASTER_SITE_GNOME:=sources/gtk+/1.2/}

HOMEPAGE=	http://www.gtk.org/

LIB_DEPENDS=	devel/gettext \
		devel/glib

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	X11 Xext Xi glib gmodule iconv intl m xcb

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --enable-static --with-xinput="xfree"
CONFIGURE_ARGS+= --disable-glibtest
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		glib_config_args=--prefix=${LOCALBASE}

.include <bsd.port.mk>
