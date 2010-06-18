# $OpenBSD: Makefile,v 1.19 2010/06/18 18:11:34 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	network support for the lua language
DISTNAME=	luasocket-2.0.2
CATEGORIES=	net

MASTER_SITES=	http://luaforge.net/frs/download.php/2664/
HOMEPAGE=	http://www.tecgraf.puc-rio.br/~diego/professional/luasocket/

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/lua
NO_REGRESS=	Yes

MAKE_FILE=	makefile

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_DATADIR}/socket ${MODLUA_DATADIR}/mime
	${INSTALL_DATA_DIR} ${MODLUA_LIBDIR}/socket ${MODLUA_LIBDIR}/mime
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/luasocket
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/luasocket
	${INSTALL_DATA} ${WRKSRC}/src/socket.so ${MODLUA_LIBDIR}/socket/core.so
	${INSTALL_DATA} ${WRKSRC}/src/unix.so ${MODLUA_LIBDIR}/socket/unix.so
	${INSTALL_DATA} ${WRKSRC}/src/mime.so ${MODLUA_LIBDIR}/mime/core.so
	${INSTALL_DATA} ${WRKSRC}/src/socket.lua ${MODLUA_DATADIR}
	${INSTALL_DATA} ${WRKSRC}/src/ltn12.lua ${MODLUA_DATADIR}
	${INSTALL_DATA} ${WRKSRC}/src/mime.lua ${MODLUA_DATADIR}
	${INSTALL_DATA} ${WRKSRC}/src/ftp.lua ${MODLUA_DATADIR}/socket
	${INSTALL_DATA} ${WRKSRC}/src/http.lua ${MODLUA_DATADIR}/socket
	${INSTALL_DATA} ${WRKSRC}/src/smtp.lua ${MODLUA_DATADIR}/socket
	${INSTALL_DATA} ${WRKSRC}/src/tp.lua ${MODLUA_DATADIR}/socket
	${INSTALL_DATA} ${WRKSRC}/src/url.lua ${MODLUA_DATADIR}/socket
	${INSTALL_DATA} ${WRKSRC}/doc/* ${PREFIX}/share/doc/luasocket
	${INSTALL_DATA} ${WRKSRC}/samples/* ${PREFIX}/share/examples/luasocket

.include <bsd.port.mk>
