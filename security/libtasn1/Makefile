# $OpenBSD: Makefile,v 1.3 2005/08/17 16:10:04 espie Exp $

COMMENT=		"Abstract Syntax Notation One structure parser library"

VERSION=		0.1.2
DISTNAME=		libtasn1-${VERSION}
PKGNAME=		${DISTNAME}p0
CATEGORIES=		security

HOMEPAGE=		http://www.gnutls.org/
MAINTAINER=		Jim Geovedi <jim@corebsd.or.id>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.gnupg.org/gcrypt/alpha/gnutls/libtasn1/ \
		ftp://gd.tuwien.ac.at/privacy/gnupg/alpha/gnutls/libtasn1/ \
		http://ftp.planetmirror.com/pub/gnupg/alpha/gnutls/libtasn1/ \
		http://sunsite.dk/pub/security/gcrypt/alpha/gnutls/libtasn1/ \
		http://ftp.linux.it/pub/mirrors/gnupg/alpha/gnutls/libtasn1/

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libtasn1
	${INSTALL_DATA} ${WRKSRC}/doc/asn1.ps ${PREFIX}/share/doc/libtasn1

.include <bsd.port.mk>
