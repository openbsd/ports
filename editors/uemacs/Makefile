# $OpenBSD: Makefile,v 1.3 1999/04/01 06:20:11 brad Exp $

DISTNAME=	uemacs
PKGNAME=	uemacs-4.0
CATEGORIES=	editors

NO_CDROM=	"NOFEE: may not charge for distribution"

MAINTAINER=	downsj@downsj.com

MASTER_SITES=	ftp://aquest.com/pub/uemacs400/disk2/
DISTFILES=	ue400dev.zip
EXTRACT_CMD=		unzip
EXTRACT_BEFORE_ARGS=	-Laq
EXTRACT_AFTER_ARGS=	-d ${WRKDIR}

BUILD_DEPENDS=	unzip:${PORTSDIR}/archivers/unzip

NO_WRKSUBDIR=	yes

pre-patch:
	(cd ${WRKDIR}; cp -pR freebsd openbsd)

.include <bsd.port.mk>
