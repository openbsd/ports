# $OpenBSD: Makefile,v 1.23 2011/12/18 09:01:19 ajacoutot Exp $

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

MAKE_FILE=	makefile

ALL_TARGET=	bsdansi

WRKDIST=	${WRKDIR}

NO_REGRESS=	Yes

.include <bsd.port.mk>
