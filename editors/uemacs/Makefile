# $OpenBSD: Makefile,v 1.6 2000/02/10 23:14:30 espie Exp $

DISTNAME=	uemacs
PKGNAME=	uemacs-4.0
CATEGORIES=	editors
MASTER_SITES=	ftp://aquest.com/pub/uemacs400/disk2/
DISTFILES=	ue400dev.zip

NO_CDROM=	"NOFEE: may not charge for distribution"

NEED_VERSION=	1.191

MAINTAINER=	ports@openbsd.org

EXTRACT_BEFORE_ARGS=	-Laq

WRKDIST=	${WRKDIR}
USE_ZIP=	yes

pre-patch:
	cd ${WRKDIR} && cp -pR freebsd openbsd

.include <bsd.port.mk>
