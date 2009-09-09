# $OpenBSD: Makefile,v 1.1.1.1 2009/09/09 19:39:47 jolan Exp $

SHARED_ONLY=	Yes
COMMENT=	library for bitwise operations in lua
DISTNAME=	LuaBitOp-1.0.1
PKGNAME=	luabitop-1.0.1
CATEGORIES=	devel
MASTER_SITES=	http://bitop.luajit.org/download/

HOMEPAGE=	http://bitop.luajit.org/

MAINTAINER=	Jolan Luff <jolan@openbsd.org>

# MIT
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

USE_GMAKE=	Yes
MODULES=	lang/lua
REGRESS_DEPENDS+=::devel/luabitop
MAKE_ENV+=	INCLUDES=-I${LOCALBASE}/include
DOCDIR=		${PREFIX}/share/doc/luabitop

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/lua/5.1
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKBUILD}/bit.so ${PREFIX}/lib/lua/5.1
	cd ${WRKSRC}/doc && \
		find . -type d \
			-exec ${INSTALL_DATA_DIR} ${DOCDIR}/{} \; && \
		find . ! -type d \
			-exec ${INSTALL_DATA} -m 644 {} ${DOCDIR}/{} \;
do-regress:
	lua ${WRKSRC}/bittest.lua
	lua ${WRKSRC}/md5test.lua
	lua ${WRKSRC}/bitbench.lua
	lua ${WRKSRC}/nsievebits.lua

.include <bsd.port.mk>
