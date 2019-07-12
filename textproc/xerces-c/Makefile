# $OpenBSD: Makefile,v 1.18 2019/07/12 20:50:16 sthen Exp $

COMMENT =	validating XML parser written in a portable subset of C++

DISTNAME =	xerces-c-3.2.1
CATEGORIES =	textproc devel
REVISION =	0

SHARED_LIBS +=  xerces-c             0.0

# Apache 2.0
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://www.apache.org/dist/xerces/c/3/sources/

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
