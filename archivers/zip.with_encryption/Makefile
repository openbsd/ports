# OpenBSD makefile for:    zip.with_encryption
# http://infozip.cdrom.com/pub/infozip/
#
# Version required:     2.2s
# Date created:         17 Nov 1997
# Whom:                 ejovi
#
# $OpenBSD: Makefile,v 1.1.1.1 1997/11/18 00:27:10 joey Exp $
#

DISTNAME=       zip22
PKGNAME=        zip+crypt-2.2s
CATEGORIES=	archivers
MASTER_SITES=   ftp://ftp.icce.rug.nl/infozip/OLD/beta/
DISTFILES=      zip22.zip zcrypt27.zip

MAINTAINER=     joey@OpenBSD.ORG

BUILD_DEPENDS=  unzip:${PORTSDIR}/archivers/unzip

RESTRICTED=     "import/re-export restrictions for USA and early BETA stage"
EXTRACT_CMD=    unzip
EXTRACT_ARGS=   -oq
NO_WRKSUBDIR=   yes
MAKEFILE=       unix/Makefile
MAKE_FLAGS=     LOCAL_ZIP="${CFLAGS}" -f
ALL_TARGET=     generic
MAN1=           zip.1

post-extract:
	cd ${WRKSRC} && rm -f flags

do-install:
	cd ${WRKSRC} && \
	    ${INSTALL_PROGRAM} zip zipnote zipsplit zipcloak ${PREFIX}/bin
	cd ${WRKSRC}/man && \
	    ${INSTALL_MAN} ${MAN1} ${PREFIX}/man/man1

.include <bsd.port.mk>
