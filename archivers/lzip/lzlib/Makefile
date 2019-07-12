# $OpenBSD: Makefile,v 1.12 2019/07/12 20:43:28 sthen Exp $

COMMENT =		lzip compression library

DISTNAME =		lzlib-1.11

SHARED_LIBS +=		lz	1.3 # 1.9

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
