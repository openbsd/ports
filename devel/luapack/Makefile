# $OpenBSD: Makefile,v 1.2 2006/12/17 11:56:56 kili Exp $

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
RUN_DEPENDS=	::lang/lua
REGRESS_DEPENDS=::devel/luapack
BUILD_DEPENDS=	${RUN_DEPENDS}

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
