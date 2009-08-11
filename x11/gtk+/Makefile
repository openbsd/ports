# $OpenBSD: Makefile,v 1.67 2009/08/11 08:42:08 ajacoutot Exp $

COMMENT=	General Toolkit for X11 GUI

DISTNAME=	gtk+-1.2.10
PKGNAME=	${DISTNAME}p8
SHARED_LIBS=	gdk 3.0 \
		gtk 3.0
CATEGORIES=	x11 devel
MASTER_SITES=   ${MASTER_SITE_GNOME:=sources/gtk+/1.2/}

HOMEPAGE=	http://www.gtk.org/

MODULES=	devel/gettext
LIB_DEPENDS=	glib.>=1.2,gmodule.>=1.2::devel/glib

FAKE=			all

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		X11 Xau Xdmcp Xext Xi m pthread-stubs xcb

USE_X11=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static --with-xinput="xfree"
CONFIGURE_ARGS+= --disable-glibtest
CONFIGURE_ENV=	CPPFLAGS="-I${DEPBASE}/include" \
		LDFLAGS="-L${DEPBASE}/lib" \
		glib_config_args=--prefix=${DEPBASE}

.include <bsd.port.mk>
