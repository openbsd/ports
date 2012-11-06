# $OpenBSD: Makefile,v 1.1.1.1 2012/11/06 07:37:01 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	convert data to and from C structs

DISTNAME=	struct-0.2
PKGNAME=	lua${DISTNAME}

CATEGORIES=	converters

HOMEPAGE=	http://www.inf.puc-rio.br/~roberto/struct/

# MIT
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${HOMEPAGE}

MODULES=	lang/lua

WRKDIST=	${WRKDIR}

REGRESS_DEPENDS=${BUILD_PKGPATH}

# Don't bother with patching Makefile, but do take the -DSTRUCT_INT from it
do-build:
	cd ${WRKSRC} && ${CC} ${CFLAGS} -fPIC -I${MODLUA_INCL_DIR} -shared \
	-DSTRUCT_INT="long long" ${WRKSRC}/struct.c -o ${WRKSRC}/struct.so

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_LIBDIR}
	${INSTALL_DATA} ${WRKSRC}/struct.so ${MODLUA_LIBDIR}

# known failure: teststruct.lua:170: assertion failed!
do-regress:
	cd ${WRKSRC} && ${MODLUA_BIN} teststruct.lua

.include <bsd.port.mk>
