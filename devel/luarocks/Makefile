COMMENT =	package manager for lua ${MODLUA_VERSION}

V =		3.11.1
DISTNAME =	luarocks-${V}
FULLPKGNAME =	luarocks-${FLAVOR}-${V}
CATEGORIES =	devel

HOMEPAGE =	https://luarocks.org/

MAINTAINER =	Omar Polo <op@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

SITES =			https://luarocks.org/releases/

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
			--sysconfdir=${SYSCONFDIR} \
			--lua-version=${MODLUA_VERSION}
FAKE_FLAGS =		sysconfdir=${PREFIX}/share/examples

# needs busted
NO_TEST =		Yes

PKG_ARCH =		*

FLAVORS =		lua51 lua52 lua53 lua54
FLAVOR ?=		lua51

post-configure:
	sed -i 's,/usr/bin/env lua,${MODLUA_BIN},g' ${WRKSRC}/src/bin/*

post-install:
	cd ${PREFIX}/bin && \
		mv luarocks luarocks-${MODLUA_VERSION} && \
		mv luarocks-admin luarocks-admin-${MODLUA_VERSION}

.include <bsd.port.mk>
