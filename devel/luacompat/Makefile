# $OpenBSD: Makefile,v 1.5 2006/03/21 21:32:25 pedro Exp $

COMMENT=	"compatibility module for lua 5.1"
NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

DISTNAME=	compat-5.1r5
PKGNAME=	luacompat-5.1r5
SHARED_LIBS=	luacompat 5.1
DIST_SUBDIR=	luacompat-5.1r5
CATEGORIES=	devel

MASTER_SITES=	http://luaforge.net/frs/download.php/1410/
HOMEPAGE=	http://www.keplerproject.org/compat/

MAINTAINER=	Pedro Martelletto <pedro@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_REGRESS=	Yes
BUILD_DEPENDS=	::lang/lua
RUN_DEPENDS=	${BUILD_DEPENDS}

post-extract:
	@sed -e "s:@compatpath@:${PREFIX}/lua/luacompat/?.lua:g" \
		${FILESDIR}/init.lua > ${WRKSRC}/init.lua

do-build:
	cd ${WRKSRC};\
	${CC} -o libluacompat.so.${LIBluacompat_VERSION} \
		-I${LOCALBASE}/include -shared -fPIC compat-5.1.c

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lua/luacompat
	${INSTALL_DATA} ${WRKSRC}/init.lua ${PREFIX}/lua/luacompat
	${INSTALL_DATA} ${WRKSRC}/compat-5.1.lua ${PREFIX}/lua/luacompat
	${INSTALL_DATA} ${WRKSRC}/compat-5.1.h ${PREFIX}/include/luacompat.h
	${INSTALL_DATA} ${WRKSRC}/libluacompat.so.${LIBluacompat_VERSION} \
		${PREFIX}/lib

.include <bsd.port.mk>
