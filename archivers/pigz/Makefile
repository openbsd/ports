# $OpenBSD: Makefile,v 1.6 2018/01/25 10:34:49 fcambus Exp $

# __builtin_clz
NOT_FOR_ARCHS=	${GCC3_ARCHS}

COMMENT =	parallel implementation of gzip utilizing multiple cores

DISTNAME = 	pigz-2.4
CATEGORIES =	archivers
HOMEPAGE =	https://zlib.net/pigz/

MAINTAINER =	Thomas Pfaff <tpfaff@tp76.info>

# zlib + Apache
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB =	c m pthread z

MASTER_SITES =	${HOMEPAGE}

MAKE_FLAGS =	CC="${CC}" CFLAGS="${CFLAGS} -Wall -Wextra"

ALL_TARGET =	pigz

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/pigz ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/unpigz ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/pigz.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
