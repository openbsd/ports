# $OpenBSD: Makefile,v 1.1.1.1 2000/06/26 19:32:59 jakob Exp $
# $NetBSD: Makefile,v 1.2 2000/06/19 14:30:02 rh Exp $

DISTNAME=	dat-4082
PKGNAME=	uvscan_${DISTNAME}
CATEGORIES=	security
NEED_VERSION=	1.302

HOMEPAGE=	http://www.nai.com/asp_set/download/dats/mcafee_4x.asp

MASTER_SITES=	http://download.nai.com/products/datfiles/4.x/nai/
EXTRACT_SUFX=	.tar

MAINTAINER=	jakob@openbsd.org

PERMIT_PACKAGE_CDROM=	"Commercial software"
PERMIT_PACKAGE_FTP=	"Commercial software"
PERMIT_DISTFILES_CDROM=	"Commercial software"
PERMIT_DISTFILES_FTP=	"Commercial software"

ONLY_FOR_ARCH=	i386
NO_BUILD=	Yes
WRKDIST=	${WRKDIR}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/libexec/uvscan
.for file in clean.dat internet.dat names.dat scan.dat
	${INSTALL_DATA} ${WRKSRC}/${file} ${PREFIX}/libexec/uvscan
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/uvscan
.for file in reseller.txt readme.txt packing.lst
	${INSTALL_DATA} ${WRKSRC}/${file} ${PREFIX}/share/doc/uvscan
.endfor

.include <bsd.port.mk>
