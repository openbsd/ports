# $OpenBSD: Makefile,v 1.30 2019/07/12 20:43:28 sthen Exp $

COMMENT=	archive files using the HSC compression method

DISTNAME=	ha0999
PKGNAME=	ha-0.999b
REVISION =	2
CATEGORIES=	archivers
MASTER_SITES=	ftp://ftp.kiarchive.ru/pub/unix/arcers/
EXTRACT_SUFX=	.tgz

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB=	c

USE_GMAKE=	Yes

MAKE_FLAGS=	CC="${CC}" \
		CFLAGS='${CFLAGS} -Wall -c -I../$$(MCH) -I../include' \
		LDFLAGS=""

MAKE_FILE=	makefile.nix

WRKDIST=	${WRKDIR}

ALL_TARGET=	ha

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ha ${PREFIX}/bin

NO_TEST=	Yes

.include <bsd.port.mk>
