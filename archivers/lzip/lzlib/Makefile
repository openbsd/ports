# $OpenBSD: Makefile,v 1.7 2016/06/04 19:14:48 juanfra Exp $

COMMENT =		lzip compression library

DISTNAME =		lzlib-1.8

SHARED_LIBS +=		lz	1.2 # 1.8

HOMEPAGE =		http://lzip.nongnu.org/lzlib.html
MASTER_SITES =		${MASTER_SITE_SAVANNAH:=lzip/lzlib/}

# GPLv2+ with link exception
PERMIT_PACKAGE_CDROM =	Yes

MAKE_ENV +=		LIBlz_VERSION=${LIBlz_VERSION}

USE_GMAKE =		Yes

CONFIGURE_ARGS +=	--disable-static \
			--disable-ldconfig

# The Makefile tries to strip a shared lib with the install-strip target.
INSTALL_TARGET =	install

.include <bsd.port.mk>
