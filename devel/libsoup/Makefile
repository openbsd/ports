# $OpenBSD: Makefile,v 1.16 2007/03/01 16:46:48 jasper Exp $

COMMENT=		"SOAP implementation in C"

DISTNAME=		libsoup-2.2.100
SHARED_LIBS=		soup-2.2	13.0
CATEGORIES=		devel

HOMEPAGE=		http://www.gnome.org/

MAINTAINER=		Marc Matteo <marcm@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		m z

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/libsoup/2.2/}
EXTRACT_SUFX=		.tar.bz2

LIB_DEPENDS=		glib-2.0,gobject-2.0,gthread-2.0::devel/glib2 \
			xml2.>=7::textproc/libxml

MODULES=		devel/gettext

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--disable-gtk-doc
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

API_VERSION=		2.2
SUBST_VARS=		API_VERSION

FLAVORS=		ssl
FLAVOR?=

.if ${FLAVOR:L:Mssl}
CONFIGURE_ARGS+=	--enable-ssl
LIB_DEPENDS+=		gnutls.>=12::security/gnutls
WANTLIB+=		gcrypt gpg-error
.else
CONFIGURE_ARGS+=	--disable-ssl
.endif

.include <bsd.port.mk>
