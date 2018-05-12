# $OpenBSD: Makefile,v 1.28 2018/05/12 09:22:27 espie Exp $

COMMENT=	handle the old .ZOO archive format

DISTNAME=	zoo-2.10pl1
PKGNAME=	zoo-2.10.1
REVISION =	2
CATEGORIES=	archivers
MASTER_SITES=	https://spacehopper.org/mirrors/

# Conditional
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c

MAKE_FLAGS=	CC="${CC}" OPTIM="${CFLAGS}"

MAKE_FILE=	makefile

ALL_TARGET=	bsdansi

WRKDIST=	${WRKDIR}

NO_TEST=	Yes

.include <bsd.port.mk>
