# $OpenBSD: Makefile,v 1.4 2004/09/22 07:59:04 robert Exp $

COMMENT=		"Open Crypto Development Kit"

VERSION=		0.5.5
DISTNAME=		opencdk-${VERSION}
CATEGORIES=		security

HOMEPAGE=		http://www.gnutls.org/
MAINTAINER=		Jim Geovedi <jim@corebsd.or.id>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.gnupg.org/gcrypt/alpha/gnutls/opencdk/ \
		ftp://gd.tuwien.ac.at/privacy/gnupg/alpha/gnutls/opencdk/ \
		http://sunsite.dk/pub/security/gcrypt/alpha/gnutls/opencdk/ \
		http://ftp.linux.it/pub/mirrors/gnupg/alpha/gnutls/opencdk/
EXTRACT_SUFX=	.tar.bz2

LIB_DEPENDS=	gcrypt.12::security/libgcrypt

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-static \
		--with-libgcrypt-prefix=${LOCALBASE}
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/opencdk
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/opencdk
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/opencdk
	${INSTALL_DATA} ${WRKSRC}/doc/opencdk-api.html \
		${PREFIX}/share/doc/opencdk
	${INSTALL_DATA} ${WRKSRC}/tests/*.c \
		${PREFIX}/share/examples/opencdk
	${INSTALL_DATA} ${WRKSRC}/tests/*.gpg \
		${PREFIX}/share/examples/opencdk

.include <bsd.port.mk>
