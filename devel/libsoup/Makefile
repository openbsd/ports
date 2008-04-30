# $OpenBSD: Makefile,v 1.21 2008/04/30 11:22:11 ajacoutot Exp $

COMMENT=		SOAP implementation in C

GNOME_PROJECT=		libsoup
GNOME_VERSION=		2.4.1
PKGNAME=		${DISTNAME}p0
SHARED_LIBS +=	soup-2.4             0.0      # .1.0
API_VERSION=		2.4
CATEGORIES=		devel

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		m pcre z

LIB_DEPENDS=		gio-2.0,glib-2.0,gobject-2.0,gthread-2.0,gmodule-2.0::devel/glib2 \
			xml2.>=7::textproc/libxml

MODULES=		devel/gettext \
			x11/gnome

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-gtk-doc
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

# XXX because of the subsitution, "make plist" will break packaging;
# make sure you use libsoup-${API_VERSION}.so.${LIBsoup-XX_VERSION} in
# PFRAG.shared, where XX is the expanded value of ${API_VERSION}
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
