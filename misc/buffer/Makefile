# $OpenBSD: Makefile,v 1.17 2002/03/21 21:09:18 espie Exp $

COMMENT=	"buffer sporadic I/O for faster tape and pipe throughput"

DISTNAME=	buffer-1.17.1
CATEGORIES=	misc
NEED_VERSION=	1.515

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_FREEBSD_LOCAL}
MASTER_SITE_SUBDIR=	steve
EXTRACT_SUFX=	.tar.bz2

WRKDIST=	${WRKDIR}

NO_REGRESS=	Yes

.include <bsd.port.mk>
