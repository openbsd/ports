# $OpenBSD: Makefile,v 1.7 2000/02/14 09:12:18 turan Exp $

DISTNAME=	uemacs
PKGNAME=	uemacs-4.0
CATEGORIES=	editors
MASTER_SITES=	ftp://aquest.com/pub/uemacs400/disk2/
DISTFILES=	ue400dev.zip

NO_CDROM=	"NOFEE: may not charge for distribution"

NEED_VERSION=	1.191

MAINTAINER=	ports@openbsd.org

LICENSE_TYPE=		COPY
PERMIT_PKG_CDROM=	"weird no fee license"
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	"wierd no fee license"
PERMIT_DISTF_FTP=	YES

EXTRACT_BEFORE_ARGS=	-Laq

WRKDIST=	${WRKDIR}
USE_ZIP=	yes

pre-patch:
	cd ${WRKDIR} && cp -pR freebsd openbsd

.include <bsd.port.mk>
