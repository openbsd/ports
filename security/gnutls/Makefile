# $OpenBSD: Makefile,v 1.1.1.1 2003/05/02 04:04:31 margarida Exp $

COMMENT=		"GNU Transport Layer Security library"

VERSION=		0.8.6
DISTNAME=		gnutls-${VERSION}
CATEGORIES=		security

HOMEPAGE=		http://www.gnutls.org/
MAINTAINER=		Jim Geovedi <jim@corebsd.or.id>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.gnupg.org/gcrypt/alpha/gnutls/ \
		ftp://gd.tuwien.ac.at/privacy/gnupg/alpha/gnutls/ \
		http://ftp.planetmirror.com/pub/gnupg/alpha/gnutls/ \
		http://sunsite.dk/pub/security/gcrypt/alpha/gnutls/ \
		http://ftp.linux.it/pub/mirrors/gnupg/alpha/gnutls/

LIB_DEPENDS=	gcrypt.6::security/libgcrypt \
		opencdk.6::security/opencdk \
		tasn1.2::security/libtasn1

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gnutls
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gnutls
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/gnutls
	${INSTALL_DATA} ${WRKSRC}/doc/examples/*.c \
	  ${PREFIX}/share/examples/gnutls

.include <bsd.port.mk>
