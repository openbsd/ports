# $OpenBSD: Makefile,v 1.10 2012/08/12 17:24:56 jasper Exp $

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

REGRESS_FILES=	bittest md5test bitbench nsievebits

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_LIBDIR} ${MODLUA_DOCDIR}
	${INSTALL_DATA} ${WRKBUILD}/bit.so ${MODLUA_LIBDIR}
	cd ${WRKSRC}/doc && \
		find . -type d \
			-exec ${INSTALL_DATA_DIR} ${MODLUA_DOCDIR}/{} \; && \
		find . ! -type d \
			-exec ${INSTALL_DATA} -m 644 {} ${MODLUA_DOCDIR}/{} \;
do-regress:
.for r in ${REGRESS_FILES}
	${MODLUA_BIN} ${WRKSRC}/$r.lua
.endfor

.include <bsd.port.mk>
