# $OpenBSD: Makefile,v 1.16 2018/03/13 21:07:42 jasper Exp $

COMMENT =	validating XML parser written in a portable subset of C++

DISTNAME =	xerces-c-3.2.1
CATEGORIES =	textproc devel

SHARED_LIBS +=  xerces-c             0.0

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://www.apache.org/dist/xerces/c/3/sources/

WANTLIB += ${COMPILER_LIBCXX} icudata icui18n icuuc m

LIB_DEPENDS =		textproc/icu4c

CONFIGURE_STYLE =	gnu
USE_GMAKE =		Yes

CONFIGURE_ARGS +=	--disable-static \
			--disable-network

post-install:
	rm ${PREFIX}/lib/*.{a,la}

.include <bsd.port.mk>
