# $OpenBSD: Makefile,v 1.28 2000/10/09 22:08:16 avsm Exp $

DISTNAME=	nmap-2.54BETA6
PKGNAME=	nmap-2.54b6
CATEGORIES=	net security
NEED_VERSION=	1.338
MASTER_SITES=	http://www.insecure.org/nmap/dist/
EXTRACT_SUFX=	.tgz

HOMEPAGE=	http://www.insecure.org/nmap/
MAINTAINER=	Angelos Keromytis <angelos@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_FLAGS=	CCOPT="${CFLAGS}"
CONFIGURE_STYLE= gnu
ALL_TARGET=	nmap
NMAP_FILES=	os-fingerprints protocols rpc services

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/nmap
	${INSTALL_PROGRAM} ${WRKBUILD}/nmap ${PREFIX}/bin
	${INSTALL_MAN}	${WRKBUILD}/docs/nmap.1 ${PREFIX}/man/man1
.	for i in ${NMAP_FILES}
	${INSTALL_DATA} ${WRKSRC}/nmap-$i ${PREFIX}/share/nmap
.	endfor

.include <bsd.port.mk>
