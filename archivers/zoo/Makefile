# $OpenBSD: Makefile,v 1.14 2002/03/21 20:35:41 espie Exp $

COMMENT=	"handle the old .ZOO archive format"

DISTNAME=	zoo-2.10pl1
PKGNAME=	zoo-2.10.1
CATEGORIES=	archivers
NEED_VERSION=	1.515
MASTER_SITES=	ftp://ftp.kiarchive.ru/pub/unix/arcers/

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_FLAGS=	CC="${CC}" OPTIM="${CFLAGS}"

MAKE_FILE=	makefile

ALL_TARGET=	bsdansi

WRKDIST=	${WRKDIR}

NO_REGRESS=	Yes

.include <bsd.port.mk>
