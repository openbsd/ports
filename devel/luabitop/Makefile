# $OpenBSD: Makefile,v 1.8 2012/06/06 11:52:42 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	library for bitwise operations in lua

V=		1.0.2
DISTNAME=	LuaBitOp-$V
PKGNAME=	luabitop-$V
CATEGORIES=	devel
MASTER_SITES=	${HOMEPAGE}/download/

HOMEPAGE=	http://bitop.luajit.org/

# MIT
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

USE_GMAKE=	Yes
MODULES=	lang/lua
REGRESS_DEPENDS+=${BASE_PKGPATH}
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
