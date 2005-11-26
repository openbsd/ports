# $OpenBSD: Makefile,v 1.5 2005/11/26 13:46:56 pedro Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"network support for the lua language"
DISTNAME=	luasocket-2.0
CATEGORIES=	net

MASTER_SITES=	http://luaforge.net/frs/download.php/1097/
HOMEPAGE=	http://www.cs.princeton.edu/~diego/professional/luasocket/

MAINTAINER=	Pedro Martelletto <pedro@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_REGRESS=	Yes

BUILD_DEPENDS=	::lang/lua ::devel/luacompat
RUN_DEPENDS=	${BUILD_DEPENDS}
LIB_DEPENDS=	luacompat::devel/luacompat

MAKE_FILE=	makefile

post-extract:
	@sed -e "s:@socketpath@:${PREFIX}/lua/luasocket/?.lua:g" \
	     -e "s:@socketcpath@:${PREFIX}/lua/luasocket/?.so:g" \
		${FILESDIR}/init.lua > ${WRKSRC}/init.lua

LUASOCKETDIR= ${PREFIX}/lua/luasocket

do-install:
	${INSTALL_DATA_DIR} ${LUASOCKETDIR}
	${INSTALL_DATA_DIR} ${LUASOCKETDIR}/socket
	${INSTALL_DATA_DIR} ${LUASOCKETDIR}/mime
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/luasocket
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/luasocket
	${INSTALL_DATA} ${WRKSRC}/src/socket.so ${LUASOCKETDIR}/socket/core.so
	${INSTALL_DATA} ${WRKSRC}/src/mime.so ${LUASOCKETDIR}/mime/core.so
	${INSTALL_DATA} ${WRKSRC}/init.lua ${LUASOCKETDIR}
	${INSTALL_DATA} ${WRKSRC}/src/socket.lua ${LUASOCKETDIR}
	${INSTALL_DATA} ${WRKSRC}/src/ltn12.lua ${LUASOCKETDIR}
	${INSTALL_DATA} ${WRKSRC}/src/mime.lua ${LUASOCKETDIR}
	${INSTALL_DATA} ${WRKSRC}/src/ftp.lua ${LUASOCKETDIR}/socket
	${INSTALL_DATA} ${WRKSRC}/src/http.lua ${LUASOCKETDIR}/socket
	${INSTALL_DATA} ${WRKSRC}/src/smtp.lua ${LUASOCKETDIR}/socket
	${INSTALL_DATA} ${WRKSRC}/src/tp.lua ${LUASOCKETDIR}/socket
	${INSTALL_DATA} ${WRKSRC}/src/url.lua ${LUASOCKETDIR}/socket
	${INSTALL_DATA} ${WRKSRC}/doc/* ${PREFIX}/share/doc/luasocket
	${INSTALL_DATA} ${WRKSRC}/samples/* ${PREFIX}/share/examples/luasocket

.include <bsd.port.mk>
