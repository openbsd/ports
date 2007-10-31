# $OpenBSD: Makefile,v 1.19 2007/10/31 19:10:45 jasper Exp $

COMMENT=		SOAP implementation in C

GNOME_PROJECT=		libsoup
GNOME_VERSION=		2.2.103
SHARED_LIBS +=	soup-2.2             13.1     # .13.0
API_VERSION=		2.2
CATEGORIES=		devel

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		m pcre z

LIB_DEPENDS=		glib-2.0,gobject-2.0,gthread-2.0::devel/glib2 \
			xml2.>=7::textproc/libxml

MODULES=		devel/gettext \
			x11/gnome

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-gtk-doc
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

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
