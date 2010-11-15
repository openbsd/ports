# $OpenBSD: Makefile,v 1.11 2010/11/15 19:46:00 espie Exp $

SHARED_ONLY=	Yes
COMMENT=	lua binding of posix and pcre regex libraries
DISTNAME=	lrexlib-2.4.0
PKGNAME=	luarexlib-2.4.0
REVISION=	1
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
LIB_DEPENDS=	devel/pcre \
		lang/lua \
		textproc/oniguruma
WANTLIB =	pcre>=1.0 lua onig
REGRESS_DEPENDS+=devel/luarexlib

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_LIBDIR}
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/luarexlib
	${INSTALL_DATA} ${WRKSRC}/src/oniguruma/*.so \
		${WRKSRC}/src/pcre/*.so \
		${WRKSRC}/src/posix/*.so \
		${MODLUA_LIBDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/* ${PREFIX}/share/doc/luarexlib

do-regress:
	cd ${WRKDIST}/test && lua runtest.lua -v onig
	cd ${WRKDIST}/test && lua runtest.lua -v pcre
	cd ${WRKDIST}/test && lua runtest.lua -v posix

.include <bsd.port.mk>
