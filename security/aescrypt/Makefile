# $OpenBSD: Makefile,v 1.1.1.1 2001/07/05 03:28:09 lebel Exp $

COMMENT=		"encrypt/decrypt using Rijndael encryption algorithm"

V=			0.7
DISTNAME=		aescrypt-${V}
CATEGORIES=		security
NEED_VERSION=		1.402

MAINTAINER=		David Lebel <lebel@openbsd.org>

HOMEPAGE=		http://aescrypt.sourceforge.net/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://aescrypt.sourceforge.net/ \
  			${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	aescrypt

CONFIGURE_STYLE=	autoconf

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/aescrypt ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/aesget   ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/aescrypt
	${INSTALL_DATA} ${WRKSRC}/README.html ${PREFIX}/share/doc/aescrypt

.include <bsd.port.mk>
