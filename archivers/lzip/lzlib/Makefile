# $OpenBSD: Makefile,v 1.14 2022/02/09 10:43:27 fcambus Exp $

COMMENT =		lzip compression library

DISTNAME =		lzlib-1.13

SHARED_LIBS +=		lz	1.4 # 1.13

HOMEPAGE =		http://lzip.nongnu.org/lzlib.html
MASTER_SITES =		${MASTER_SITE_SAVANNAH:=lzip/lzlib/}

# 2-clause BSD
PERMIT_PACKAGE =	Yes

MAKE_ENV +=		LIBlz_VERSION=${LIBlz_VERSION}

USE_GMAKE =		Yes

CONFIGURE_ARGS +=	--disable-static \
			--disable-ldconfig

# The Makefile tries to strip a shared lib with the install-strip target.
INSTALL_TARGET =	install

.include <bsd.port.mk>
