COMMENT=	Java program analyzer and checker

DISTNAME=	jlint-3.1.2
REVISION =	5
CATEGORIES=	java

HOMEPAGE=	https://jlint.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE=	Yes
WANTLIB=		c z m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc
CXXFLAGS_base-clang =	-std=c++14

SITES=		${SITE_SOURCEFORGE:=jlint/}

MAKE_ENV+=	CC="${CC}" CPP="${CXX}" \
		CXXFLAGS="${CXXFLAGS}" \
		INSTALL_PROGRAM="${INSTALL_PROGRAM}" \
		INSTALL_DATA_DIR="${INSTALL_DATA_DIR}" \
		INSTALL_DATA="${INSTALL_DATA}"

NO_TEST=	Yes

FIX_EXTRACT_PERMISSIONS =	Yes

.include <bsd.port.mk>
