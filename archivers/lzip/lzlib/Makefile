# $OpenBSD: Makefile,v 1.4 2014/09/13 22:12:40 juanfra Exp $

COMMENT =		lzip compression library

DISTNAME =		lzlib-1.6

SHARED_LIBS +=		lz	1.0 # 1.6

HOMEPAGE =		http://lzip.nongnu.org/lzlib.html
MASTER_SITES =		${MASTER_SITE_SAVANNAH:=lzip/lzlib/}

# GPLv2+ with link exception
PERMIT_PACKAGE_CDROM =	Yes

MAKE_ENV +=		LIBlz_VERSION=${LIBlz_VERSION}

USE_GMAKE =		Yes

CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--disable-static \
			--disable-ldconfig

# The Makefile tries to strip a shared lib with the install-strip target.
INSTALL_TARGET =	install

.include <bsd.port.mk>
