# $OpenBSD: Makefile,v 1.7 2009/09/10 20:23:18 jolan Exp $

SHARED_ONLY=	Yes
COMMENT=	lua binding of posix and pcre regex libraries
DISTNAME=	lrexlib-2.4.0
PKGNAME=	luarexlib-2.4.0p0
CATEGORIES=	devel

MASTER_SITES=	http://luaforge.net/frs/download.php/3599/
HOMEPAGE=	http://lrexlib.luaforge.net/
EXTRACT_SUFX=	.zip

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=	Yes
MAKE_ENV+=	MAKE_PROGRAM=${MAKE_PROGRAM} \
		INC_LUA=-I${LOCALBASE}/include \
		LIB_LUA="-L${LOCALBASE}/lib -llua"
MODULES=	lang/lua
LIB_DEPENDS=	pcre.>=1.0::devel/pcre \
		lua::lang/lua \
		onig::textproc/oniguruma
REGRESS_DEPENDS+=::devel/luarexlib

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/lua/5.1
	${INSTALL_DATA_DIR} ${PREFIX}/doc/luarexlib
	${INSTALL_DATA} ${WRKSRC}/src/oniguruma/*.so \
		${WRKSRC}/src/pcre/*.so \
		${WRKSRC}/src/posix/*.so \
		${PREFIX}/lib/lua/5.1
	${INSTALL_DATA} ${WRKSRC}/doc/* ${PREFIX}/doc/luarexlib

do-regress:
	cd ${WRKDIST}/test && lua runtest.lua -v onig
	cd ${WRKDIST}/test && lua runtest.lua -v pcre
	cd ${WRKDIST}/test && lua runtest.lua -v posix

.include <bsd.port.mk>
