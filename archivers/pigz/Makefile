# $OpenBSD: Makefile,v 1.2 2013/12/01 09:56:52 jasper Exp $

COMMENT =	parallel implementation of gzip utilizing multiple cores

DISTNAME = 	pigz-2.3.1
REVISION =	0
CATEGORIES =	archivers
HOMEPAGE =	http://zlib.net/pigz/

MAINTAINER =	Thomas Pfaff <tpfaff@tp76.info>

# zlib + Apache
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB =	c m pthread z

MASTER_SITES =	${HOMEPAGE}

MAKE_FLAGS =	CC="${CC}" CFLAGS="${CFLAGS} -Wall -Wextra"

USE_GMAKE =	Yes
ALL_TARGET =	pigz

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/pigz ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/unpigz ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/pigz.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
