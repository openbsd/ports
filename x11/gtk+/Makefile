# $OpenBSD: Makefile,v 1.79 2014/09/10 07:07:25 jasper Exp $

PORTROACH=	limit:^1

COMMENT=	General Toolkit for X11 GUI

DISTNAME=	gtk+-1.2.10
REVISION=	12

SHARED_LIBS=	gdk 3.0 \
		gtk 3.0
CATEGORIES=	x11 devel
MASTER_SITES=   ${MASTER_SITE_GNOME:=sources/gtk+/1.2/}

HOMEPAGE=	http://www.gtk.org/

MODULES=	devel/gettext
LIB_DEPENDS=	devel/glib

FAKE=			all

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xext Xi glib gmodule m xcb


CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static --with-xinput="xfree"
CONFIGURE_ARGS+= --disable-glibtest
CONFIGURE_ENV=	CPPFLAGS="-I${DEPBASE}/include" \
		LDFLAGS="-L${DEPBASE}/lib" \
		glib_config_args=--prefix=${DEPBASE}

# for non shared arches
CONFIGURE_ENV += X_EXTRA_LIBS=-lxcb

.include <bsd.port.mk>
