# $OpenBSD: Makefile,v 1.15 2001/03/29 15:01:55 brad Exp $

COMMENT=	"archive files using the HSC compression method"

DISTNAME=	ha0999
PKGNAME=	ha-0.999b
CATEGORIES=	archivers
NEED_VERSION=	1.364
MASTER_SITES=	ftp://ftp.kiarchive.ru/pub/unix/arcers/
EXTRACT_SUFX=	.tgz

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=	Yes

MAKE_FLAGS=	CC="${CC}" \
		CFLAGS='${CFLAGS} -Wall -c -I../$$(MCH) -I../include' \
		LDFLAGS=""

MAKE_FILE=	makefile.nix

WRKDIST=	${WRKDIR}

ALL_TARGET=	ha

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ha ${PREFIX}/bin

.include <bsd.port.mk>
