# $OpenBSD: Makefile,v 1.3 2004/08/09 06:15:27 marcm Exp $

COMMENT=		"a SOAP (Simple Object Access Protocol) implementation in C"

DISTNAME=		libsoup-2.1.12
CATEGORIES=		devel

HOMEPAGE=		http://www.gnome.org/

MAINTAINER=		Marc Matteo <marcm@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/libsoup/2.1/}
EXTRACT_SUFX=		.tar.bz2

LIB_DEPENDS=		glib-2.0.0.0,gobject-2.0.0.0,gthread-2.0.0.0::devel/glib2 \
			xml2.7::textproc/libxml

BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--disable-gtk-doc
# Uses GnuTLS now...
CONFIGURE_ARGS+=	--disable-ssl
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

API_VERSION=		2.2
SUBST_VARS=		API_VERSION

.include <bsd.port.mk>
