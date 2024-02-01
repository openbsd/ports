COMMENT =		data recovery tool

DISTNAME =		ddrescue-1.28

CATEGORIES =		sysutils

HOMEPAGE =		https://www.gnu.org/software/ddrescue/ddrescue.html

MAINTAINER=		Martin Ziemer <horrad@horrad.de>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =		c m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

SITES =			${SITE_GNU:=ddrescue/}

EXTRACT_SUFX =		.tar.lz

BUILD_DEPENDS =		devel/help2man

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	CC="${CC}" CXX="${CXX}" CFLAGS="${CFLAGS}" \
			CXXFLAGS="${CXXFLAGS}" \
			--mandir="${PREFIX}/man" \
			--infodir="${PREFIX}/info"

ALL_TARGET =		all doc
TEST_TARGET =		check

.include <bsd.port.mk>
