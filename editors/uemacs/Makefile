# $OpenBSD: Makefile,v 1.4 1999/05/21 12:24:43 brad Exp $

DISTNAME=	uemacs
PKGNAME=	uemacs-4.0
CATEGORIES=	editors
MASTER_SITES=	ftp://aquest.com/pub/uemacs400/disk2/
DISTFILES=	ue400dev.zip

NO_CDROM=	"NOFEE: may not charge for distribution"

NEED_VERSION=	1.91

MAINTAINER=	downsj@downsj.com

EXTRACT_BEFORE_ARGS=	-Laq

NO_WRKSUBDIR=	yes
USE_ZIP=	yes

pre-patch:
	(cd ${WRKDIR}; cp -pR freebsd openbsd)

.include <bsd.port.mk>
