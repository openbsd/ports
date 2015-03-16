# $OpenBSD: Makefile,v 1.4 2015/03/16 16:26:15 juanfra Exp $

# __builtin_clz
NOT_FOR_ARCHS=	${GCC3_ARCHS}

COMMENT =	parallel implementation of gzip utilizing multiple cores

DISTNAME = 	pigz-2.3.3
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
