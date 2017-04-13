# $OpenBSD: Makefile,v 1.28 2017/04/13 21:21:43 naddy Exp $

COMMENT=	buffer sporadic I/O for faster tape and pipe throughput

DISTNAME=	buffer-1.17.1
REVISION=	1
CATEGORIES=	misc

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c

MASTER_SITES=	${MASTER_SITE_FREEBSD_LOCAL:=steve/}
EXTRACT_SUFX=	.tar.bz2

MAKE_ENV=	CC="${CC}"

WRKDIST=	${WRKDIR}

NO_TEST=	Yes

.include <bsd.port.mk>
