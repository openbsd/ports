# $OpenBSD: Makefile,v 1.10 2013/05/30 15:58:31 jasper Exp $

SHARED_ONLY=		Yes

COMMENT=		libstatgrab bindings for Lua

DISTNAME=		lua-statgrab-0.3.0
PKGNAME=		${DISTNAME:S/-//}
REVISION=		3
CATEGORIES=		sysutils devel

HOMEPAGE=		http://luaforge.net/projects/lua-statgrab

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/lua

MASTER_SITES=	http://luaforge.net/frs/download.php/4756/

WANTLIB =	statgrab
LIB_DEPENDS=	sysutils/libstatgrab
TEST_DEPENDS=${BUILD_PKGPATH}

do-build:
	cd ${WRKDIR} && \
	${CC} ${CFLAGS} -fPIC -I${MODLUA_INCL_DIR} -shared\
		`pkg-config --cflags libstatgrab` \
		`pkg-config --libs libstatgrab` \
		${WRKSRC}/libstatgrab.c -o ${WRKSRC}/libstatgrab.so

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_LIBDIR} ${MODLUA_DATADIR} \
		${MODLUA_DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/libstatgrab.so ${MODLUA_LIBDIR}
	${INSTALL_DATA} ${WRKSRC}/statgrab.lua ${MODLUA_DATADIR}
	${INSTALL_DATA} ${WRKSRC}/API.txt ${MODLUA_DOCDIR}

do-test:
	cd ${WRKSRC} && ${MODLUA_BIN} *.lua

.include <bsd.port.mk>
