# $OpenBSD: Makefile,v 1.6 2004/12/27 13:28:33 alek Exp $

COMMENT=		"encrypt/decrypt using Rijndael encryption algorithm"

V=			0.7
DISTNAME=		aescrypt-${V}
CATEGORIES=		security

HOMEPAGE=		http://aescrypt.sourceforge.net/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=		http://aescrypt.sourceforge.net/ \
			${MASTER_SITE_SOURCEFORGE:=aescrypt/}

CONFIGURE_STYLE=	autoconf

NO_REGRESS=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/aescrypt ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/aesget   ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/aescrypt
	${INSTALL_DATA} ${WRKSRC}/README.html ${PREFIX}/share/doc/aescrypt

.include <bsd.port.mk>
