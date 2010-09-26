# $OpenBSD: Makefile,v 1.8 2010/09/26 20:08:11 martynas Exp $

COMMENT=	library for packing and unpacking binary data
DISTNAME=	luapack-20061124
PKGNAME=	${DISTNAME}p0
CATEGORIES=	devel
MASTER_SITES=	http://openbsddistfiles.com/jolan/

HOMEPAGE=	http://www.tecgraf.puc-rio.br/~lhf/ftp/lua/

# PD
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	lang/lua
SHARED_ONLY=	Yes
REGRESS_DEPENDS=::${BUILD_PKGPATH}

do-build:
	${CC} ${CFLAGS} -fPIC -I${LOCALBASE}/include -shared \
		${WRKSRC}/lpack.c -o ${WRKDIST}/pack.so

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_LIBDIR}
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/luapack
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/luapack
	${INSTALL_DATA} ${WRKBUILD}/pack.so ${MODLUA_LIBDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/luapack
	${INSTALL_DATA} ${WRKSRC}/test.lua ${PREFIX}/share/examples/luapack

do-regress:
	lua ${WRKSRC}/test.lua

.include <bsd.port.mk>
