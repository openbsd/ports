# $OpenBSD: Makefile,v 1.28 2009/01/29 20:08:42 sturm Exp $

COMMENT=                SOAP implementation in C

GNOME_PROJECT=          libsoup
GNOME_VERSION=          2.24.3
PKGNAME=		${DISTNAME}p0
SHARED_LIBS +=  soup-2.4             1.0     # .3.0
API_VERSION=            2.4
CATEGORIES=             devel

# LGPLv2
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=                gcrypt gpg-error m pcre tasn1 z

LIB_DEPENDS=            gio-2.0,glib-2.0,gmodule-2.0,gobject-2.0,gthread-2.0::devel/glib2 \
			gnutls.>=12::security/gnutls \
                        xml2.>=7::textproc/libxml

MODULES=                devel/gettext \
                        x11/gnome

CONFIGURE_STYLE=        gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-ssl \
			--disable-gtk-doc
CONFIGURE_ENV=          CPPFLAGS="-I${LOCALBASE}/include" \
                        LDFLAGS="-L${LOCALBASE}/lib"

SUBST_VARS=             API_VERSION

NO_REGRESS=		Yes

.include <bsd.port.mk>
