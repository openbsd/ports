# $OpenBSD: Makefile,v 1.7 2000/03/26 22:02:28 brad Exp $

DISTNAME=       zoo-2.10pl1
PKGNAME=	zoo-2.10.1
CATEGORIES=	archivers
NEED_VERSION=	1.218
MASTER_SITES=   ftp://ftp.kiarchive.ru/pub/unix/arcers/

MAINTAINER=	angelos@openbsd.org

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

FAKE=	Yes

MAKE_FILE=	makefile
MAKE_FLAGS=	CC="${CC}" OPTIM="${CFLAGS}"
FAKE_FLAGS=	PREFIX="${WRKINST}${PREFIX}"

ALL_TARGET=	bsdansi

WRKDIST=	${WRKDIR}

.include <bsd.port.mk>
