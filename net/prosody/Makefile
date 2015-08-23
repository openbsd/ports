# $OpenBSD: Makefile,v 1.35 2015/08/23 11:01:49 jca Exp $

SHARED_ONLY=	Yes

COMMENT=	communications server for Jabber/XMPP written in Lua
DISTNAME =	prosody-0.9.8
REVISION =	1
CATEGORIES=	net
MASTER_SITES=	http://prosody.im/downloads/source/

HOMEPAGE=	http://prosody.im/

MAINTAINER=	Henrik Friedrichsen <henrik@diff.cc>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

USE_GMAKE=	Yes
MODULES=	lang/lua
LIB_DEPENDS=	devel/libidn
MODLUA_RUN_DEPENDS+= archivers/luazlib \
		databases/luadbi \
		devel/luaevent \
		devel/luafs \
		security/luasec \
		textproc/luaexpat>=1.3.0
TEST_DEPENDS =	${MODLUA_RUN_DEPENDS}
WANTLIB+=	crypto idn

SUBST_VARS+=	FLAVOR MAKE_PROGRAM

CONFIGURE_STYLE=simple
CONFIGURE_ARGS+=--prefix="${PREFIX}" \
		--sysconfdir="${SYSCONFDIR}/prosody" \
		--datadir="/var/prosody" \
		--with-lua="${LOCALBASE}" \
		--with-lua-include="${MODLUA_INCL_DIR}" \
		--c-compiler="${CC}" \
		--linker="${CC}" \
		--ldflags="-I/usr/include -I${LOCALBASE}/include -L/usr/lib -L${LOCALBASE}/lib -shared" \
		--cflags="${CFLAGS} -I${LOCALBASE}/include -fPIC"

FAKE_FLAGS+=	CONFIG=${DESTDIR}${PREFIX}/share/examples/prosody

pre-configure:
	${SUBST_CMD} ${WRKSRC}/prosody ${WRKSRC}/prosodyctl \
		${WRKSRC}/certs/Makefile \
		${WRKSRC}/tests/run_tests.sh

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/prosody
	${INSTALL_DATA} ${WRKSRC}/README \
		${PREFIX}/share/doc/prosody
	touch ${PREFIX}/share/examples/prosody/prosody.log
	rm -f ${PREFIX}/share/examples/prosody/certs/Makefile.*

do-test:
	cd ${WRKSRC}/tests && sh run_tests.sh 0

.include <bsd.port.mk>
