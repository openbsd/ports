# $OpenBSD: Makefile,v 1.28 2013/03/10 22:28:04 espie Exp $

COMMENT=	archive files using the HSC compression method

DISTNAME=	ha0999
PKGNAME=	ha-0.999b
CATEGORIES=	archivers
MASTER_SITES=	ftp://ftp.kiarchive.ru/pub/unix/arcers/
EXTRACT_SUFX=	.tgz

FAKE=			all
# GPL
PERMIT_PACKAGE_CDROM=	Yes

REVISION =	1
WANTLIB=		c

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
