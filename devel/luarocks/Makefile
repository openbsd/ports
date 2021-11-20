# $OpenBSD: Makefile,v 1.4 2021/11/20 10:36:30 ajacoutot Exp $

COMMENT =	package manager for lua ${MODLUA_VERSION}

V =		3.8.0
DISTNAME =	luarocks-${V}
FULLPKGNAME =	luarocks-${FLAVOR}-${V}
CATEGORIES =	devel
REVISION =	0

HOMEPAGE =	https://luarocks.org/

MAINTAINER =	Omar Polo <op@omarpolo.com>

# MIT
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://luarocks.org/releases/

MODULES =		lang/lua
MODLUA_SA =		Yes

BUILD_DEPENDS =		archivers/unzip \
			archivers/zip
RUN_DEPENDS =		archivers/unzip \
			archivers/zip \
			net/curl

USE_GMAKE =		Yes

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	--with-lua-include=${MODLUA_INCL_DIR} \
			--with-lua-lib=${LOCALBASE}/lib \
			--sysconfdir=${PREFIX}/share/examples/luarocks \
			--lua-version=${MODLUA_VERSION}

NO_TEST =		Yes

PKG_ARCH =		*

FLAVORS =		lua51 lua52 lua53
FLAVOR ?=		lua51

post-configure:
	sed -i 's,/usr/bin/env lua,${MODLUA_BIN},g' ${WRKSRC}/src/bin/*

post-install:
	cd ${PREFIX}/bin && \
		mv luarocks luarocks-${MODLUA_VERSION} && \
		mv luarocks-admin luarocks-admin-${MODLUA_VERSION}

.include <bsd.port.mk>
