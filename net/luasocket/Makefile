# $OpenBSD: Makefile,v 1.18 2009/09/06 13:46:58 jolan Exp $

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
SHAREDIR=	${PREFIX}/share/lua/5.1
LIBDIR=		${PREFIX}/lib/lua/5.1

do-install:
	${INSTALL_DATA_DIR} ${SHAREDIR}/socket ${SHAREDIR}/mime
	${INSTALL_DATA_DIR} ${LIBDIR}/socket ${LIBDIR}/mime
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/luasocket
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/luasocket
	${INSTALL_DATA} ${WRKSRC}/src/socket.so ${LIBDIR}/socket/core.so
	${INSTALL_DATA} ${WRKSRC}/src/unix.so ${LIBDIR}/socket/unix.so
	${INSTALL_DATA} ${WRKSRC}/src/mime.so ${LIBDIR}/mime/core.so
	${INSTALL_DATA} ${WRKSRC}/src/socket.lua ${SHAREDIR}
	${INSTALL_DATA} ${WRKSRC}/src/ltn12.lua ${SHAREDIR}
	${INSTALL_DATA} ${WRKSRC}/src/mime.lua ${SHAREDIR}
	${INSTALL_DATA} ${WRKSRC}/src/ftp.lua ${SHAREDIR}/socket
	${INSTALL_DATA} ${WRKSRC}/src/http.lua ${SHAREDIR}/socket
	${INSTALL_DATA} ${WRKSRC}/src/smtp.lua ${SHAREDIR}/socket
	${INSTALL_DATA} ${WRKSRC}/src/tp.lua ${SHAREDIR}/socket
	${INSTALL_DATA} ${WRKSRC}/src/url.lua ${SHAREDIR}/socket
	${INSTALL_DATA} ${WRKSRC}/doc/* ${PREFIX}/share/doc/luasocket
	${INSTALL_DATA} ${WRKSRC}/samples/* ${PREFIX}/share/examples/luasocket

.include <bsd.port.mk>
