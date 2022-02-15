# $OpenBSD: Makefile,v 1.19 2022/02/15 17:27:03 sthen Exp $

COMMENT =		implementation of XMP
DISTNAME =		exempi-2.6.1
REVISION =		0

CATEGORIES =		textproc

SHARED_LIBS +=  exempi               2.0      # 9.1

HOMEPAGE =		http://libopenraw.freedesktop.org/wiki/Exempi

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += c expat m pthread ${COMPILER_LIBCXX} z

COMPILER =		base-clang ports-gcc

# configure checks for libiconv but it's unused
BUILD_DEPENDS =		converters/libiconv

MASTER_SITES =		http://libopenraw.freedesktop.org/download/
DEBUG_PACKAGES =	${BUILD_PACKAGES}

USE_GMAKE =		yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--enable-unittest=no
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
