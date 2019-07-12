# $OpenBSD: Makefile,v 1.33 2019/07/12 20:46:04 sthen Exp $

COMMENT=	binary editor and viewer

VERSION=	1.40
# Debian
REV=		18

DISTNAME=	beav-140
PKGNAME=	beav-${VERSION}.${REV}
REVISION =	3
CATEGORIES=	editors

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB=	c curses

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
	@sed -i.beforesubst 's,%%PREFIX%%,${TRUEPREFIX},' ${PREFIX}/man/man1/beav.1

.include <bsd.port.mk>
