# $OpenBSD: Makefile,v 1.12 2006/10/03 19:46:08 naddy Exp $

COMMENT=		"printing framework for GNOME"

DISTNAME=		gnome-print-0.36
PKGNAME=		${DISTNAME}p4
SHARED_LIBS=		gnomeprint 17.0
CATEGORIES=		x11/gnome print
HOMEPAGE=		http://www.gnome.org/projects/gnome-print/

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gnome-print/0.36/}

LIB_DEPENDS=		gdk_pixbuf.>=2::graphics/gdk-pixbuf \
			gnome.>=36,art_lgpl.>=4,gnomesupport,gnomeui.>=46::x11/gnome/libs \
			xml.>=9::textproc/libxml1

RUN_DEPENDS=		:ghostscript-*:print/ghostscript/gnu

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xext Xi audiofile c esd freetype gdk \
			gdk_imlib glib gmodule gtk iconv intl jpeg m png tiff \
			ungif z

SEPARATE_BUILD=		concurrent
USE_X11=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include"

MAKE_FLAGS=		GNOMEPRINT_CURRENT=17 GNOMEPRINT_REVISION=0

.include <bsd.port.mk>
