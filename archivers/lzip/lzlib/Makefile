COMMENT =		lzip compression library

DISTNAME =		lzlib-1.14
REVISION =		0

SHARED_LIBS +=		lz	1.4 # 1.14

HOMEPAGE =		https://lzip.nongnu.org/lzlib.html
SITES =			${SITE_SAVANNAH:=lzip/lzlib/}

# 2-clause BSD
PERMIT_PACKAGE =	Yes

MAKE_ENV +=		LIBlz_VERSION=${LIBlz_VERSION}

USE_GMAKE =		Yes

CONFIGURE_ARGS +=	--disable-static \
			--disable-ldconfig

# The Makefile tries to strip a shared lib with the install-strip target.
INSTALL_TARGET =	install

.include <bsd.port.mk>
