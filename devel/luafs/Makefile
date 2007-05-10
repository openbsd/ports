# $OpenBSD: Makefile,v 1.7 2007/05/10 20:23:29 pedro Exp $
SHARED_ONLY=	Yes

COMMENT=	"file system library for the lua language"
DISTNAME=	luafilesystem-1.2.1
PKGNAME=	luafs-1.2.1
CATEGORIES=	devel
MASTER_SITES=	http://luaforge.net/frs/download.php/2381/

HOMEPAGE=	http://www.keplerproject.org/luafilesystem/

MAINTAINER=	Pedro Martelletto <pedro@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=  ::lang/lua
BUILD_DEPENDS=    ${RUN_DEPENDS}

post-extract:
	@perl -pi -e 's/\r\n/\n/' ${WRKSRC}/Makefile ${WRKSRC}/config

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/lua/5.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/luafs
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/luafs
	${INSTALL_DATA} ${WRKSRC}/lfs.so ${PREFIX}/lib/lua/5.1
	${INSTALL_DATA} ${WRKSRC}/doc/us/*.html ${WRKSRC}/doc/us/*.png \
		${PREFIX}/share/doc/luafs
	${INSTALL_DATA} ${WRKSRC}/tests/*.lua ${PREFIX}/share/examples/luafs

do-regress:
	cp ${WRKDIST}/*.so ${WRKDIST}/tests
	cd ${WRKDIST}/tests && lua test.lua

.include <bsd.port.mk>
