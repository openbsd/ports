COMMENT=		encrypt/decrypt using Rijndael encryption algorithm

V=			0.7
DISTNAME=		aescrypt-${V}
REVISION=		2
CATEGORIES=		security

HOMEPAGE=		https://aescrypt.sourceforge.net/

# BSD
PERMIT_PACKAGE=	Yes
WANTLIB=		c

SITES=			https://aescrypt.sourceforge.net/ \
			${SITE_SOURCEFORGE:=aescrypt/}

AUTOCONF_VERSION=	2.13
CONFIGURE_STYLE=	autoconf

NO_TEST=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/aescrypt ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/aesget   ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/aescrypt
	${INSTALL_DATA} ${WRKSRC}/README.html ${PREFIX}/share/doc/aescrypt

.include <bsd.port.mk>
