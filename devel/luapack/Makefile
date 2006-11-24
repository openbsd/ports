# $OpenBSD: Makefile,v 1.1.1.1 2006/11/24 18:58:02 jolan Exp $

COMMENT=	"library for packing and unpacking binary data"
DISTNAME=	luapack-20061124
CATEGORIES=	devel
MASTER_SITES=	http://mirrors.protection.cx/~jolan/

HOMEPAGE=	http://www.tecgraf.puc-rio.br/~lhf/ftp/lua/

# PD
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

SHARED_ONLY=	Yes
BUILD_DEPENDS=	::lang/lua
REGRESS_DEPENDS=::devel/luapack
RUN_DEPENDS=	${BUILD_DEPENDS}

do-build:
	${CC} ${CFLAGS} -fPIC -I${LOCALBASE}/include -shared \
		${WRKSRC}/lpack.c -o ${WRKDIST}/pack.so

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/lua/5.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/luapack
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/luapack
	${INSTALL_DATA} ${WRKBUILD}/pack.so ${PREFIX}/lib/lua/5.1
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/luapack
	${INSTALL_DATA} ${WRKSRC}/test.lua ${PREFIX}/share/examples/luapack

do-regress:
	lua ${WRKSRC}/test.lua

.include <bsd.port.mk>
