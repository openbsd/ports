# $OpenBSD: Makefile,v 1.8 2008/01/23 21:53:20 jasper Exp $

COMMENT=		Abstract Syntax Notation One structure parser library

DISTNAME=		libtasn1-1.2
CATEGORIES=		security
SHARED_LIBS +=  tasn1                1.0      # .3.13

HOMEPAGE=		http://www.gnu.org/software/gnutls/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.gnutls.org/pub/gnutls/libtasn1/ \
		ftp://ftp.gnupg.org/gcrypt/alpha/gnutls/libtasn1/ \
		ftp://ftp.mirrors.wiretapped.net/pub/security/network-security/gnutls/libtasn1/ \
		http://www.gnu.org/software/gnutls/releases/libtasn1/ \
		http://josefsson.org/gnutls/releases/libtasn1/ \
		http://www.mirrors.wiretapped.net/security/network-security/gnutls/libtasn1/

WANTLIB=		c

USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--disable-gtk-doc
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
