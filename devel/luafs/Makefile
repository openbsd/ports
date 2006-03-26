# $OpenBSD: Makefile,v 1.3 2006/03/26 04:56:01 pedro Exp $
SHARED_ONLY=	Yes

COMMENT=	"file system library for the lua language"
DISTNAME=	luafilesystem-1.2
PKGNAME=	luafs-1.2
CATEGORIES=	devel
MASTER_SITES=	http://luaforge.net/frs/download.php/1487/

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
	     -e "s:@fscpath@:${PREFIX}/lua/luafs/?.so:g" \
		${FILESDIR}/init.lua > ${WRKSRC}/init.lua
	@perl -pi -e 's/\r\n/\n/' ${WRKSRC}/Makefile ${WRKSRC}/config

LUAFSDIR= ${PREFIX}/lua/luafs

do-install:
	${INSTALL_DATA_DIR} ${LUAFSDIR}
	${INSTALL_DATA_DIR} ${LUAFSDIR}/fs
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/luafs
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/luafs
	${INSTALL_DATA} ${FILESDIR}/lfs.lua ${LUAFSDIR}
	${INSTALL_DATA} ${WRKSRC}/core.so ${LUAFSDIR}/fs
	${INSTALL_DATA} ${WRKSRC}/init.lua ${LUAFSDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/us/*.html ${WRKSRC}/doc/us/*.png \
		${PREFIX}/share/doc/luafs
	${INSTALL_DATA} ${WRKSRC}/tests/*.lua ${PREFIX}/share/examples/luafs

.include <bsd.port.mk>
