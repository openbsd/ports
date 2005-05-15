# $OpenBSD: Makefile,v 1.1.1.1 2005/05/15 00:42:52 jolan Exp $
SHARED_ONLY=	Yes

COMMENT=	"file system library for the lua language"
DISTNAME=	luafilesystem-1.0
PKGNAME=	luafs-1.0
CATEGORIES=	devel
MASTER_SITES=	http://luaforge.net/frs/download.php/430/

HOMEPAGE=	http://www.keplerproject.org/luafilesystem/

MAINTAINER=	Pedro Martelletto <pedro@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_REGRESS=	Yes
BUILD_DEPENDS=  ::lang/lua ::devel/luacompat
RUN_DEPENDS=    ${BUILD_DEPENDS}

post-extract:
	@sed -e "s:@fspath@:${PREFIX}/lua/luafs/?.lua:g" \
	     -e "s:@fscpath@:${PREFIX}/lib/?.so:g" \
		${FILESDIR}/init.lua > ${WRKSRC}/init.lua

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lua/luafs
	${INSTALL_DATA} ${WRKSRC}/*.so ${PREFIX}/lib/luafs.so
	${INSTALL_DATA} ${WRKSRC}/init.lua ${PREFIX}/lua/luafs
	${INSTALL_DATA} ${FILESDIR}/lfs.lua ${PREFIX}/lua/luafs
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/luafs
	${INSTALL_DATA} ${WRKSRC}/*.html ${WRKSRC}/*.png \
		${PREFIX}/share/doc/luafs
	
.include <bsd.port.mk>
