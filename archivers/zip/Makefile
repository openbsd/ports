# OpenBSD makefile for:    zip (without encryption)
# http://infozip.cdrom.com/pub/infozip/
#
# Version required:     2.1
# Date created:         17 Nov 1997
# Whom:                 ejovi
#
# $OpenBSD: Makefile,v 1.3 1998/02/25 21:08:06 marc Exp $
#

DISTNAME=       zip21
PKGNAME=        zip-2.1
CATEGORIES=	archivers
MASTER_SITES=   ftp://ftp.cdrom.com/pub/infozip/src/
EXTRACT_SUFX=   .zip

MAINTAINER=     joey@OpenBSD.ORG

BUILD_DEPENDS=  unzip:${PORTSDIR}/archivers/unzip

EXTRACT_CMD=    ${SETENV} unzip
EXTRACT_ARGS=   -oq
NO_WRKSUBDIR=   yes
MAKEFILE=       unix/Makefile
MAKE_FLAGS=     LOCAL_ZIP="${CFLAGS}" -f
ALL_TARGET=     generic
MAN1=           zip.1

do-install:
	cd ${WRKSRC} && \
	    ${INSTALL_PROGRAM} zip zipnote zipsplit zipcloak ${PREFIX}/bin
	cd ${WRKSRC}/man && \
	    ${INSTALL_MAN} ${MAN1} ${PREFIX}/man/man1
	install -d -m 555 -o ${SHAREOWN} -g ${SHAREGRP} ${PREFIX}/share/doc/zip
	cd ${WRKSRC} && \
		${INSTALL_DATA} README Where ${PREFIX}/share/doc/zip

.include <bsd.port.mk>
