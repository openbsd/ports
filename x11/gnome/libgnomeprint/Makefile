# $OpenBSD: Makefile,v 1.10 2005/05/24 21:52:35 marcm Exp $

COMMENT=		"printing framework for GNOME"

VERSION=		2.10.3
DISTNAME=		libgnomeprint-${VERSION}
CATEGORIES=		devel

HOMEPAGE=		http://www.gnome.org/projects/gnome-print/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 fontconfig freetype m pangoft2-1.0.0.0 z

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/libgnomeprint/2.10/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext

BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig \
			:p5-XML-Parser-*:textproc/p5-XML-Parser
LIB_DEPENDS=		art_lgpl_2.5::graphics/libart \
			glib-2.0.0.0,gmodule-2.0.0.0,gobject-2.0.0.0::devel/glib2 \
			pango-1.0.0.0::devel/pango \
			popt.0::devel/popt \
			xml2.6::textproc/libxml

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--disable-gtk-doc
CONFIGURE_ARGS+=	--without-cups
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			PKG_CONFIG_PATH="${LOCALBASE}/lib/pkgconfig:${X11BASE}/lib/pkgconfig"
SUBST_VARS=		VERSION

.include <bsd.port.mk>
