# $OpenBSD: Makefile,v 1.6 2016/03/11 20:28:21 naddy Exp $

COMMENT =		lzip compression library

DISTNAME =		lzlib-1.7

SHARED_LIBS +=		lz	1.1 # 1.7

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
