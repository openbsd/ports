BROKEN-sparc64 = "ICUTransService.hpp does not exist" while packaging

COMMENT =	validating XML parser written in a portable subset of C++

DISTNAME =	xerces-c-3.3.0
CATEGORIES =	textproc devel

SHARED_LIBS =	xerces-c	2.0

HOMEPAGE =	https://xerces.apache.org/xerces-c/

# Apache 2.0
PERMIT_PACKAGE =	Yes

SITES =		${SITE_APACHE:=xerces/c/3/sources/}

WANTLIB += ${COMPILER_LIBCXX} icudata icui18n icuuc m

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS =		textproc/icu4c

CONFIGURE_STYLE =	gnu
USE_GMAKE =		Yes

CONFIGURE_ARGS +=	--disable-static \
			--disable-network

post-install:
	rm ${PREFIX}/lib/*.{a,la}

.include <bsd.port.mk>
