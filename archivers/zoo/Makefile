# $OpenBSD: Makefile,v 1.25 2013/09/20 20:37:15 sthen Exp $

COMMENT=	handle the old .ZOO archive format

DISTNAME=	zoo-2.10pl1
PKGNAME=	zoo-2.10.1
CATEGORIES=	archivers
MASTER_SITES=	http://spacehopper.org/mirrors/

# Conditional
PERMIT_PACKAGE_CDROM=	Yes

REVISION =	1
WANTLIB=		c

MAKE_FLAGS=	CC="${CC}" OPTIM="${CFLAGS}"

MAKE_FILE=	makefile

ALL_TARGET=	bsdansi

WRKDIST=	${WRKDIR}

NO_TEST=	Yes

.include <bsd.port.mk>
