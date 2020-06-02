# $OpenBSD: Makefile,v 1.57 2020/06/02 07:22:46 landry Exp $

COMMENT=	communications server for Jabber/XMPP written in Lua
DISTNAME=	prosody-0.11.5
CATEGORIES=	net
MASTER_SITES=	https://prosody.im/downloads/source/

HOMEPAGE=	https://prosody.im/

MAINTAINER=	Lucas <lucas@sexy.is>

# MIT
PERMIT_PACKAGE=	Yes

MAKE_FILE=	makefile
MODULES=	lang/lua
LIB_DEPENDS=	devel/libidn
MODLUA_RUN_DEPENDS+= databases/luadbi \
		devel/lua-bitop \
		devel/luafs \
		security/luasec \
		textproc/luaexpat>=1.3.0
TEST_DEPENDS =	${MODLUA_RUN_DEPENDS}
WANTLIB+=	crypto idn

CONFIGURE_STYLE=simple
CONFIGURE_ARGS+=--prefix="${PREFIX}" \
		--sysconfdir="${SYSCONFDIR}/prosody" \
		--datadir="${VARBASE}/prosody" \
		--with-lua="${LOCALBASE}" \
		--with-lua-include="${MODLUA_INCL_DIR}" \
		--c-compiler="${CC}" \
		--linker="${CC}" \
		--ldflags="-L/usr/lib -L${LOCALBASE}/lib -shared" \
		--cflags="${CFLAGS} -I${LOCALBASE}/include -fPIC -std=c99"

FAKE_FLAGS+=	CONFIG=${DESTDIR}${PREFIX}/share/examples/prosody

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
