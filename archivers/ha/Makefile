# $OpenBSD: Makefile,v 1.11 2000/03/24 22:11:32 espie Exp $

DISTNAME=	ha0999
PKGNAME=	ha-0.999b
CATEGORIES=	archivers
NEED_VERSION=	1.213
MASTER_SITES=	ftp://ftp.kiarchive.ru/pub/unix/arcers/
EXTRACT_SUFX=	.tgz


MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE=	Yes

USE_GMAKE=	Yes
NO_CONFIGURE=	Yes
MAKE_FILE=	makefile.nix

MAKE_FLAGS=	CC="${CC}" \
		CFLAGS='${CFLAGS} -Wall -c -I../$$(MCH) -I../include' \
		LDFLAGS=""

WRKDIST=	${WRKDIR}

ALL_TARGET=	ha

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ha ${PREFIX}/bin

.include <bsd.port.mk>
