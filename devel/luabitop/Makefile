# $OpenBSD: Makefile,v 1.6 2012/05/15 20:45:12 jasper Exp $

SHARED_ONLY=	Yes
COMMENT=	library for bitwise operations in lua
DISTNAME=	LuaBitOp-1.0.1
PKGNAME=	luabitop-1.0.1
REVISION=	2
CATEGORIES=	devel
MASTER_SITES=	http://bitop.luajit.org/download/

HOMEPAGE=	http://bitop.luajit.org/

# MIT
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

USE_GMAKE=	Yes
MODULES=	lang/lua
REGRESS_DEPENDS+=devel/luabitop
MAKE_ENV+=	INCLUDES=-I${LOCALBASE}/include

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_LIBDIR} ${MODLUA_DOCDIR}
	${INSTALL_DATA} ${WRKBUILD}/bit.so ${MODLUA_LIBDIR}
	cd ${WRKSRC}/doc && \
		find . -type d \
			-exec ${INSTALL_DATA_DIR} ${MODLUA_DOCDIR}/{} \; && \
		find . ! -type d \
			-exec ${INSTALL_DATA} -m 644 {} ${MODLUA_DOCDIR}/{} \;
do-regress:
	lua ${WRKSRC}/bittest.lua
	lua ${WRKSRC}/md5test.lua
	lua ${WRKSRC}/bitbench.lua
	lua ${WRKSRC}/nsievebits.lua

.include <bsd.port.mk>
