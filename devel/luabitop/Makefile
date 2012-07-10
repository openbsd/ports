# $OpenBSD: Makefile,v 1.9 2012/07/10 15:22:44 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	library for bitwise operations in lua

V=		1.0.2
DISTNAME=	LuaBitOp-$V
PKGNAME=	luabitop-$V
CATEGORIES=	devel
REVISION=	0
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
MAKE_ENV+=	INCLUDES=-I${MODLUA_INCL_DIR}

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_LIBDIR} ${MODLUA_DOCDIR}
	${INSTALL_DATA} ${WRKBUILD}/bit.so ${MODLUA_LIBDIR}
	cd ${WRKSRC}/doc && \
		find . -type d \
			-exec ${INSTALL_DATA_DIR} ${MODLUA_DOCDIR}/{} \; && \
		find . ! -type d \
			-exec ${INSTALL_DATA} -m 644 {} ${MODLUA_DOCDIR}/{} \;
do-regress:
	${MODLUA_BIN} ${WRKSRC}/bittest.lua
	${MODLUA_BIN} ${WRKSRC}/md5test.lua
	${MODLUA_BIN} ${WRKSRC}/bitbench.lua
	${MODLUA_BIN} ${WRKSRC}/nsievebits.lua

.include <bsd.port.mk>
