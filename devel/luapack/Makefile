# $OpenBSD: Makefile,v 1.14 2013/03/11 10:50:11 espie Exp $

COMMENT=	library for packing and unpacking binary data
DISTNAME=	luapack-20061124
REVISION =	2
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_BACKUP}

HOMEPAGE=	http://www.tecgraf.puc-rio.br/~lhf/ftp/lua/

# PD
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/lua
SHARED_ONLY=	Yes
TEST_DEPENDS=${BUILD_PKGPATH}

do-build:
	${CC} ${CFLAGS} -fPIC -I${MODLUA_INCL_DIR} -shared \
		${WRKSRC}/lpack.c -o ${WRKDIST}/pack.so

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_LIBDIR} ${MODLUA_DOCDIR} ${MODLUA_EXAMPLEDIR}
	${INSTALL_DATA} ${WRKBUILD}/pack.so ${MODLUA_LIBDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${MODLUA_DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/test.lua ${MODLUA_EXAMPLEDIR}

do-test:
	${MODLUA_BIN} ${WRKSRC}/test.lua

.include <bsd.port.mk>
