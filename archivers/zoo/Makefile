# $OpenBSD: Makefile,v 1.9 2000/08/31 06:50:29 brad Exp $

DISTNAME=	zoo-2.10pl1
PKGNAME=	zoo-2.10.1
CATEGORIES=	archivers
NEED_VERSION=	1.322
MASTER_SITES=	ftp://ftp.kiarchive.ru/pub/unix/arcers/

MAINTAINER=	angelos@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_FLAGS=	CC="${CC}" OPTIM="${CFLAGS}"

MAKE_FILE=	makefile

ALL_TARGET=	bsdansi

WRKDIST=	${WRKDIR}

.include <bsd.port.mk>
