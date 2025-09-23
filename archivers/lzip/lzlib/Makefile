COMMENT =		lzip compression library

DISTNAME =		lzlib-1.15

SHARED_LIBS +=		lz	1.4 # 1.15

HOMEPAGE =		https://lzip.nongnu.org/lzlib.html
SITES =			${SITE_SAVANNAH:=lzip/lzlib/}

# 2-clause BSD
PERMIT_PACKAGE =	Yes

CONFIGURE_ARGS +=	--disable-static \
			--disable-ldconfig

# The Makefile tries to strip a shared lib with the install-strip target.
INSTALL_TARGET =	install

pre-configure:
	sed -i s/soversion=1/soversion=${LIBlz_VERSION}/ ${WRKSRC}/configure

.include <bsd.port.mk>
