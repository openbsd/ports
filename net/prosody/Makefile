# $OpenBSD: Makefile,v 1.66 2022/01/25 11:08:00 sthen Exp $

COMMENT =	communications server for Jabber/XMPP written in Lua
DISTNAME =	prosody-0.11.13
CATEGORIES =	net
HOMEPAGE =	https://prosody.im/

MAINTAINER =	Lucas <lucas@sexy.is>

MASTER_SITES =	https://prosody.im/downloads/source/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/lua
MODLUA_VERSION =	5.2

MODLUA_RUN_DEPENDS +=	databases/luadbi \
			devel/lua-bitop \
			devel/luafs \
			security/luasec \
			textproc/luaexpat
LIB_DEPENDS =		devel/libidn

# fails, depends on busted not yet in
NO_TEST =		Yes
TEST_DEPENDS =		${MODLUA_RUN_DEPENDS}

WANTLIB += crypto idn

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS +=	--prefix="${PREFIX}" \
			--sysconfdir="${SYSCONFDIR}/prosody" \
			--datadir="${VARBASE}/prosody" \
			--with-lua="${LOCALBASE}" \
			--with-lua-include="${MODLUA_INCL_DIR}" \
			--lua-version="${MODLUA_VERSION}" \
			--no-example-certs \
			--c-compiler="${CC}" \
			--linker="${CC}" \
			--ldflags="-L/usr/lib -L${LOCALBASE}/lib -shared" \
			--cflags="${CFLAGS} -I${LOCALBASE}/include -fPIC -std=c99"

MAKE_FILE =		makefile

FAKE_FLAGS +=		CONFIG=${DESTDIR}${PREFIX}/share/examples/prosody

pre-configure:
	cd ${WRKSRC}; sed -i -e 's,^#!/usr/bin/env lua,#!${MODLUA_BIN},' -e \
		's,^lua ,${MODLUA_BIN} ,' prosody prosodyctl

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/prosody
	${INSTALL_DATA} ${WRKSRC}/README \
		${PREFIX}/share/doc/prosody
	${INSTALL_DATA} ${WRKSRC}/certs/makefile \
		${PREFIX}/share/examples/prosody/certs/Makefile
	${INSTALL_DATA} ${WRKSRC}/certs/openssl.cnf \
		 ${PREFIX}/share/examples/prosody/certs

.include <bsd.port.mk>
