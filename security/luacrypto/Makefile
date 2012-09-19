# $OpenBSD: Makefile,v 1.13 2012/09/19 08:15:09 jasper Exp $

COMMENT=	Lua binding for the OpenSSL crypto libraries
SHARED_ONLY=	Yes

DISTNAME=	luacrypto-0.2.0
REVISION=	3
CATEGORIES=	security

MASTER_SITES=	http://luaforge.net/frs/download.php/1722/
HOMEPAGE=	http://luacrypto.luaforge.net/

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=	Yes
WANTLIB=	crypto ssl
MODLUA_REGRESS_DEPENDS=security/luacrypto
CFLAGS+=	-fPIC -DPIC

MODULES=	lang/lua

pre-configure:
	${SUBST_CMD} ${WRKSRC}/config

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_LIBDIR}
	${INSTALL_DATA} ${WRKSRC}/src/crypto.so ${MODLUA_LIBDIR}
	${INSTALL_DATA_DIR} ${MODLUA_DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/us/{*.html,*.png} ${MODLUA_DOCDIR}

do-regress:
	cd ${WRKDIST}/tests && ${MODLUA_BIN} test.lua message

.include <bsd.port.mk>
