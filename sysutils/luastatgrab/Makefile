# $OpenBSD: Makefile,v 1.3 2010/11/20 17:22:41 espie Exp $

SHARED_ONLY=		Yes

COMMENT=		libstatgrab bindings for Lua

DISTNAME=		lua-statgrab-0.2.2
PKGNAME=		${DISTNAME:S/-//}
CATEGORIES=		sysutils devel

HOMEPAGE=		http://luaforge.net/projects/lua-statgrab

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/lua

MASTER_SITES=	http://luaforge.net/frs/download.php/4508/

WANTLIB =	statgrab
LIB_DEPENDS=	sysutils/libstatgrab
REGRESS_DEPENDS=${BUILD_PKGPATH}

do-build:
	${CC} ${CFLAGS} -fPIC -I${LOCALBASE}/include -shared\
		`pkg-config --cflags libstatgrab` \
		`pkg-config --libs libstatgrab` \
		${WRKSRC}/libstatgrab.c -o ${WRKSRC}/libstatgrab.so

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_LIBDIR} ${MODLUA_DATADIR} \
		${PREFIX}/share/doc/luastatgrab/
	${INSTALL_DATA} ${WRKSRC}/libstatgrab.so ${MODLUA_LIBDIR}
	${INSTALL_DATA} ${WRKSRC}/statgrab.lua ${MODLUA_DATADIR}
	${INSTALL_DATA} ${WRKSRC}/API.txt ${PREFIX}/share/doc/luastatgrab

do-regress:
	cd ${WRKSRC} && ${LOCALBASE}/bin/lua *.lua

.include <bsd.port.mk>
