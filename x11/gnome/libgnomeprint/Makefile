# $OpenBSD: Makefile,v 1.26 2009/02/11 15:33:52 jasper Exp $

COMMENT=		printing framework for GNOME

GNOME_PROJECT=		libgnomeprint
GNOME_VERSION=		2.18.5
SHARED_LIBS +=	gnomeprint-2-2 2.1            # .1.0
CATEGORIES=		devel
PKGNAME=		${DISTNAME}p0

HOMEPAGE=		http://www.gnome.org/projects/gnome-print/

# LGPLv2.1/GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	X11 Xau Xdmcp expat fontconfig freetype glib-2.0 gmodule-2.0 \
		gobject-2.0 m pcre z

MODULES=		devel/gettext \
			x11/gnome

BUILD_DEPENDS=		:bison-*:devel/bison
LIB_DEPENDS=		pango-1.0.>=1300.0,pangoft2-1.0.>=1300.0::devel/pango \
			art_lgpl_2.>=5::graphics/libart \
			xml2.>=9::textproc/libxml

USE_X11=		Yes
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--without-cups
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

SUBST_VARS=		VERSION

.include <bsd.port.mk>
