# $OpenBSD: Makefile,v 1.22 2010/10/18 16:47:00 espie Exp $

COMMENT=	handle the old .ZOO archive format

DISTNAME=	zoo-2.10pl1
PKGNAME=	zoo-2.10.1
CATEGORIES=	archivers
MASTER_SITES=	ftp://ftp.kiarchive.ru/pub/unix/arcers/

# Conditional
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

REVISION =	1
WANTLIB=		c

MAKE_FLAGS=	CC="${CC}" OPTIM="${CFLAGS}"
USE_GROFF =	Yes

MAKE_FILE=	makefile

ALL_TARGET=	bsdansi

WRKDIST=	${WRKDIR}

NO_REGRESS=	Yes

.include <bsd.port.mk>
