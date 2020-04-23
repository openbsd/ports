# $OpenBSD: Makefile,v 1.1.1.1 2020/04/23 14:26:06 tracey Exp $

COMMENT =		tool to build and unpack SPIFFS images

GH_ACCOUNT =		igrr
GH_PROJECT =		mkspiffs
GH_TAGNAME =		0.2.3

CATEGORIES =		devel

MAINTAINER =		Tracey Emery <tracey@openbsd.org>

SPFS_V =		f5e26c4e933189593a71c6b82cda381a7b21e41c
MASTER_SITES0 =		https://github.com/pellepl/spiffs/archive/

DISTFILES =		${GH_PROJECT}-${GH_TAGNAME}${EXTRACT_SUFX}
DISTFILES +=		spiffs-${SPFS_V}{${SPFS_V}}${EXTRACT_SUFX}:0

# MIT both mkspiffs and spiffs
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c m

# C++11
COMPILER =		base-clang ports-gcc

MAKE_FLAGS =		CC="${CC}" CXX="${CXX}" \
			VERSION=${GH_TAGNAME} \
			SPIFFS_VERSION=${SPFS_V}

USE_GMAKE =		Yes

NO_TEST =		Yes

post-extract:
	rmdir ${WRKSRC}/spiffs
	mv ${WRKDIR}/spiffs-${SPFS_V} ${WRKSRC}/spiffs

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/mkspiffs ${PREFIX}/bin

.include <bsd.port.mk>
