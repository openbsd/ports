# $OpenBSD: Makefile,v 1.26 2008/11/25 15:06:02 ajacoutot Exp $

COMMENT=                SOAP implementation in C

GNOME_PROJECT=          libsoup
GNOME_VERSION=          2.24.2.1
SHARED_LIBS +=  soup-2.4             1.0     # .3.0
API_VERSION=            2.4
CATEGORIES=             devel

# LGPLv2
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=                m pcre z

LIB_DEPENDS=            gio-2.0,glib-2.0,gmodule-2.0,gobject-2.0,gthread-2.0::devel/glib2 \
                        xml2.>=7::textproc/libxml

MODULES=                devel/gettext \
                        x11/gnome

CONFIGURE_STYLE=        gnu
CONFIGURE_ARGS+=        ${CONFIGURE_SHARED} \
                        --disable-gtk-doc
CONFIGURE_ENV=          CPPFLAGS="-I${LOCALBASE}/include" \
                        LDFLAGS="-L${LOCALBASE}/lib"

SUBST_VARS=             API_VERSION

NO_REGRESS=		Yes

FLAVORS=                ssl
FLAVOR?=

.if ${FLAVOR:L:Mssl}
CONFIGURE_ARGS+=        --enable-ssl
LIB_DEPENDS+=           gnutls.>=12::security/gnutls
WANTLIB+=               gcrypt gpg-error tasn1
.else
CONFIGURE_ARGS+=        --disable-ssl
.endif

.include <bsd.port.mk>
