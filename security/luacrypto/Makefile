# $OpenBSD: Makefile,v 1.18 2019/07/12 20:49:05 sthen Exp $

COMMENT=	Lua binding for the OpenSSL crypto libraries

DISTNAME=	luacrypto-0.2.0
REVISION=	3

CATEGORIES=	security

HOMEPAGE=	http://luacrypto.luaforge.net/

# MIT
PERMIT_PACKAGE=	Yes

MASTER_SITES=	http://luaforge.net/frs/download.php/1722/

WANTLIB=	crypto ssl

MODULES=	lang/lua

MODLUA_VERSION=	5.1
MODLUA_TEST_DEPENDS=security/luacrypto

USE_GMAKE=	Yes

CFLAGS+=	-fPIC -DPIC

pre-configure:
	${SUBST_CMD} ${WRKSRC}/config

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_LIBDIR}
	${INSTALL_DATA} ${WRKSRC}/src/crypto.so ${MODLUA_LIBDIR}
	${INSTALL_DATA_DIR} ${MODLUA_DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/us/{*.html,*.png} ${MODLUA_DOCDIR}

do-test:
	cd ${WRKDIST}/tests && ${MODLUA_BIN} test.lua message

.include <bsd.port.mk>
