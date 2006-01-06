# $OpenBSD: Makefile,v 1.12 2006/01/06 17:23:25 bernd Exp $

COMMENT=		"GNOME Application Libs"

DISTNAME=		gal-0.24
PKGNAME=		${DISTNAME}p2
SHARED_LIBS=		gal 24.0

CATEGORIES=    		devel x11/gnome
HOMEPAGE=		http://www.gnome.org/

MAINTAINER=		Marc Matteo <marcm@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xext Xi m

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gal/0.24/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext

BUILD_DEPENDS=		:gnome-libs->1.4:x11/gnome/libs \
			:gnome-print->=0.25:x11/gnome/print \
			:libglade->=0.13-gnome:devel/libglade,gnome \
			:libxml1->=1.8.8:textproc/libxml1 \
			::graphics/gdk-pixbuf,-gnome

LIB_DEPENDS=		gtk.1.2,gdk.1.2::x11/gtk+ \
			glib.1.2,gmodule.1.2::devel/glib

SEPARATE_BUILD= 	concurrent
USE_X11=		Yes
USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--with-libiconv=${LOCALBASE}
CONFIGURE_ARGS+=	--disable-gtk-doc
CONFIGURE_ARGS+=	--with-html-dir=${LOCALBASE}/share/doc/gal
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

MAKE_FLAGS=		GAL_CURRENT=24

.include <bsd.port.mk>
