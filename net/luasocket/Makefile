# $OpenBSD: Makefile,v 1.2 2005/04/19 15:14:38 pedro Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"network support for the lua language"
DISTNAME=	luasocket-2.0-beta3
PKGNAME=	${DISTNAME:S/0-b/0b/}
CATEGORIES=	net
MASTER_SITES=	${HOMEPAGE}

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

MAKE_FILE=	makefile.Linux	# heh, yeah, linux, sure...

post-extract:
	@sed -e "s:@socketpath@:${PREFIX}/lua/luasocket/?.lua:g" \
	     -e "s:@socketcpath@:${PREFIX}/lib/?.so:g" \
		${FILESDIR}/init.lua > ${WRKSRC}/init.lua

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lua/luasocket
	${INSTALL_DATA_DIR} ${PREFIX}/lua/luasocket/socket
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/luasocket
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/luasocket
	${INSTALL_DATA} ${WRKSRC}/luasocket*.so.*.* ${PREFIX}/lib/luasocket.so
	${INSTALL_DATA} ${WRKSRC}/luamime*.so* ${PREFIX}/lib/luamime.so
	${INSTALL_DATA} ${WRKSRC}/init.lua ${PREFIX}/lua/luasocket
	${INSTALL_DATA} ${WRKSRC}/lua/socket.lua ${PREFIX}/lua/luasocket
	${INSTALL_DATA} ${WRKSRC}/lua/ltn12.lua ${PREFIX}/lua/luasocket
	${INSTALL_DATA} ${WRKSRC}/lua/mime.lua ${PREFIX}/lua/luasocket
	${INSTALL_DATA} ${WRKSRC}/lua/ftp.lua ${PREFIX}/lua/luasocket/socket
	${INSTALL_DATA} ${WRKSRC}/lua/http.lua ${PREFIX}/lua/luasocket/socket
	${INSTALL_DATA} ${WRKSRC}/lua/smtp.lua ${PREFIX}/lua/luasocket/socket
	${INSTALL_DATA} ${WRKSRC}/lua/tp.lua ${PREFIX}/lua/luasocket/socket
	${INSTALL_DATA} ${WRKSRC}/lua/url.lua ${PREFIX}/lua/luasocket/socket
	${INSTALL_DATA} ${WRKSRC}/manual/* ${PREFIX}/share/doc/luasocket
	${INSTALL_DATA} ${WRKSRC}/examples/* ${PREFIX}/share/examples/luasocket

.include <bsd.port.mk>
