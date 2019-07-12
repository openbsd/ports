# $OpenBSD: Makefile,v 1.29 2019/07/12 20:43:30 sthen Exp $

COMMENT=	handle the old .ZOO archive format

DISTNAME=	zoo-2.10pl1
PKGNAME=	zoo-2.10.1
REVISION =	2
CATEGORIES=	archivers
MASTER_SITES=	https://spacehopper.org/mirrors/

# Conditional
PERMIT_PACKAGE=	Yes

WANTLIB=		c

MAKE_FLAGS=	CC="${CC}" OPTIM="${CFLAGS}"

MAKE_FILE=	makefile

ALL_TARGET=	bsdansi

WRKDIST=	${WRKDIR}

NO_TEST=	Yes

.include <bsd.port.mk>
