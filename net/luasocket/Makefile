# $OpenBSD: Makefile,v 1.35 2019/07/12 20:48:31 sthen Exp $

COMMENT=	network support for the lua language
V=		3.0-rc1
GH_ACCOUNT=	diegonehab
GH_PROJECT=	luasocket
GH_TAGNAME=	v$V
REVISION=	1
DISTNAME=	${GH_PROJECT}-$V
PKGNAME=	${DISTNAME:S/-rc/rc/}
CATEGORIES=	net

HOMEPAGE=	http://w3.impa.br/~diego/software/luasocket/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/lua

FLAVORS=	lua52 lua53
FLAVOR?=

NO_TEST=	Yes

USE_GMAKE=	Yes

MAKE_FILE=	makefile

MAKE_FLAGS=	CC_linux=${CC} \
		LD_linux=${CC} \
		CFLAGS_linux="${CFLAGS} -I${MODLUA_INCL_DIR} -fPIC \
			      -DPIC -DUNIX_HAS_SUN_LEN \
			      -DLUA_COMPAT_APIINTCASTS" \
		LDFLAGS_linux="${LDFLAGS} -shared -fPIC -o "

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_DATADIR}/socket ${MODLUA_DATADIR}/mime
	${INSTALL_DATA_DIR} ${MODLUA_LIBDIR}/socket ${MODLUA_LIBDIR}/mime
	${INSTALL_DATA_DIR} ${MODLUA_DOCDIR} ${MODLUA_EXAMPLEDIR}
	${INSTALL_DATA} ${WRKSRC}/src/socket.so ${MODLUA_LIBDIR}/socket/core.so
	${INSTALL_DATA} ${WRKSRC}/src/unix.so ${MODLUA_LIBDIR}/socket/unix.so
	${INSTALL_DATA} ${WRKSRC}/src/mime.so ${MODLUA_LIBDIR}/mime/core.so
.for l in ltn12 socket mime
	${INSTALL_DATA} ${WRKSRC}/src/$l.lua ${MODLUA_DATADIR}
.endfor
.for l in http url tp ftp headers smtp
	${INSTALL_DATA} ${WRKSRC}/src/$l.lua ${MODLUA_DATADIR}/socket
.endfor
	${INSTALL_DATA} ${WRKSRC}/doc/* ${MODLUA_DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/samples/* ${MODLUA_EXAMPLEDIR}

.include <bsd.port.mk>
