# $OpenBSD: Makefile,v 1.11 2009/01/19 08:56:41 jasper Exp $

COMMENT=		lightweight Jabber client library

DISTNAME=       	loudmouth-1.4.3
PKGNAME=		${DISTNAME}p1
SHARED_LIBS +=	loudmouth-1          2.0      # .1.0
CATEGORIES=		net devel

HOMEPAGE=       	http://groups.google.com/group/loudmouth-dev/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		gcrypt gpg-error pcre tasn1 z

MODULES=		devel/gettext

MASTER_SITES=   	http://ftp.imendio.com/pub/imendio/loudmouth/src/
EXTRACT_SUFX=   	.tar.bz2

LIB_DEPENDS=		glib-2.0::devel/glib2 \
			idn.>=16::devel/libidn \
			gnutls::security/gnutls
BUILD_DEPENDS=		${REGRESS_DEPENDS}
REGRESS_DEPENDS=	::devel/check

USE_LIBTOOL=    	Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-gtk-doc \
			--disable-mono \
			--with-check=${LOCALBASE}
# XXX:
# Use gnutls instead of openssl, a few ports don't seem to work
# when loudmouth uses openssl.
CONFIGURE_ARGS+=	--with-ssl=gnutls

.include <bsd.port.mk>
