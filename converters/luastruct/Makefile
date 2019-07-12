# $OpenBSD: Makefile,v 1.6 2019/07/12 21:02:13 sthen Exp $

COMMENT=	convert data to and from C structs

DISTNAME=	struct-0.3
PKGNAME=	lua${DISTNAME}

CATEGORIES=	converters

HOMEPAGE=	http://www.inf.puc-rio.br/~roberto/struct/

# MIT
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${HOMEPAGE}

MODULES=	lang/lua

FLAVORS=	lua52 lua53
FLAVOR?=

WRKDIST=	${WRKDIR}

TEST_DEPENDS=${BUILD_PKGPATH}

# Don't bother with patching Makefile, but do take the -DSTRUCT_INT from it
do-build:
	cd ${WRKSRC} && ${CC} ${CFLAGS} -fPIC -I${MODLUA_INCL_DIR} -shared \
	-DSTRUCT_INT="long long" ${WRKSRC}/struct.c -o ${WRKSRC}/struct.so

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_LIBDIR}
	${INSTALL_DATA} ${WRKSRC}/struct.so ${MODLUA_LIBDIR}

# known failure: teststruct.lua:170: assertion failed!
do-test:
	cd ${WRKSRC} && ${MODLUA_BIN} teststruct.lua

.include <bsd.port.mk>
