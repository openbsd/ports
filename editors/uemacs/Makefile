# $OpenBSD: Makefile,v 1.11 2000/05/31 15:13:52 espie Exp $

DISTNAME=	uemacs
PKGNAME=	uemacs-4.0
CATEGORIES=	editors
NEED_VERSION=	1.191
FAKE=		Yes
MASTER_SITES=	ftp://aquest.com/pub/uemacs400/disk2/
DISTFILES=	ue400dev.zip

NO_CDROM=	"NOFEE: may not charge for distribution"


MAINTAINER=	ports@openbsd.org

LICENSE_TYPE=		COPY
PERMIT_PACKAGE_CDROM=	"weird no fee license"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"wierd no fee license"
PERMIT_DISTFILES_FTP=	Yes

EXTRACT_BEFORE_ARGS=	-Laq

WRKDIST=	${WRKDIR}
USE_ZIP=	Yes

pre-patch:
	cd ${WRKDIR} && cp -pR freebsd openbsd

.include <bsd.port.mk>
