# $OpenBSD: Makefile,v 1.29 2019/07/12 20:47:48 sthen Exp $

COMMENT=	buffer sporadic I/O for faster tape and pipe throughput

DISTNAME=	buffer-1.17.1
REVISION=	1
CATEGORIES=	misc

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB=		c

MASTER_SITES=	${MASTER_SITE_FREEBSD_LOCAL:=steve/}
EXTRACT_SUFX=	.tar.bz2

MAKE_ENV=	CC="${CC}"

WRKDIST=	${WRKDIR}

NO_TEST=	Yes

.include <bsd.port.mk>
