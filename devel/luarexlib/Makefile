# $OpenBSD: Makefile,v 1.19 2019/07/12 20:44:42 sthen Exp $

COMMENT=	lua binding of posix and pcre regex libraries
DISTNAME=	lrexlib-2.4.0
PKGNAME=	luarexlib-2.4.0
REVISION=	5
CATEGORIES=	devel

MASTER_SITES=	http://luaforge.net/frs/download.php/3599/
HOMEPAGE=	http://lrexlib.luaforge.net/
EXTRACT_SUFX=	.zip

# MIT
PERMIT_PACKAGE=	Yes

USE_GMAKE=	Yes
MAKE_ENV+=	MAKE_PROGRAM=${MAKE_PROGRAM} \
		INC_LUA="-I${MODLUA_INCL_DIR} -I${LOCALBASE}/include" \
		LIB_LUA="-L${LOCALBASE}/lib ${MODLUA_LIB}"
MODULES=	lang/lua
LIB_DEPENDS=	devel/pcre \
		${MODLUA_LIB_DEPENDS} \
		textproc/oniguruma
WANTLIB =	pcre>=1.0 ${MODLUA_WANTLIB} onig
MODLUA_TEST_DEPENDS+=devel/luarexlib

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_LIBDIR} ${MODLUA_DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/src/oniguruma/*.so \
		${WRKSRC}/src/pcre/*.so \
		${WRKSRC}/src/posix/*.so \
		${MODLUA_LIBDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/* ${MODLUA_DOCDIR}

do-test:
	cd ${WRKDIST}/test && ${MODLUA_BIN} runtest.lua -v onig
	cd ${WRKDIST}/test && ${MODLUA_BIN} runtest.lua -v pcre
	cd ${WRKDIST}/test && ${MODLUA_BIN} runtest.lua -v posix

.include <bsd.port.mk>
