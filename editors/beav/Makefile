# $OpenBSD: Makefile,v 1.27 2013/12/12 21:59:57 naddy Exp $

COMMENT=	binary editor and viewer

VERSION=	1.40
# Debian
REV=		18

DISTNAME=	beav-140
PKGNAME=	beav-${VERSION}.${REV}
CATEGORIES=	editors

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c ncurses

MASTER_SITES=	${MASTER_SITE_DEBIAN:=main/b/beav/}

DISTFILES=	beav_${VERSION}.orig.tar.gz
PATCHFILES=	beav_${VERSION}-${REV}.diff.gz
PATCH_DIST_STRIP= -p1

ALL_TARGET=	beav
MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS} -DUNIX -DBSD"

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/beav ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/beav.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/beav
	${INSTALL_DATA} ${WRKSRC}/beav140.txt ${PREFIX}/share/doc/beav/beav.txt
	@perl -i -pe 's:%%PREFIX%%:${TRUEPREFIX}:' ${PREFIX}/man/man1/beav.1

.include <bsd.port.mk>
