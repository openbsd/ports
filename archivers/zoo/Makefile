# $OpenBSD: Makefile,v 1.24 2013/03/10 22:28:05 espie Exp $

COMMENT=	handle the old .ZOO archive format

DISTNAME=	zoo-2.10pl1
PKGNAME=	zoo-2.10.1
CATEGORIES=	archivers
MASTER_SITES=	ftp://ftp.kiarchive.ru/pub/unix/arcers/

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
