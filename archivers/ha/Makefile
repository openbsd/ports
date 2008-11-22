# $OpenBSD: Makefile,v 1.25 2008/11/22 09:36:20 jasper Exp $

COMMENT=	archive files using the HSC compression method

DISTNAME=	ha0999
PKGNAME=	ha-0.999bp0
CATEGORIES=	archivers
MASTER_SITES=	ftp://ftp.kiarchive.ru/pub/unix/arcers/
EXTRACT_SUFX=	.tgz

FAKE=			all
# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
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

NO_REGRESS=	Yes

.include <bsd.port.mk>
