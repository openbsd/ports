# $OpenBSD: Makefile,v 1.1.1.1 2004/12/16 13:38:12 pedro Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"network support for the lua language"
DISTNAME=	luasocket-2.0-beta2
PKGNAME=	${DISTNAME:S/0-b/0b/}
CATEGORIES=	net
MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://www.tecgraf.puc-rio.br/~diego/luasocket/

MAINTAINER=	Pedro Martelletto <pedro@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_REGRESS=	Yes

BUILD_DEPENDS=	::lang/lua
RUN_DEPENDS=	${BUILD_DEPENDS}

MAKE_FILE=	makefile.Linux	# heh, yeah, linux, sure...

post-extract:
	@sed -e "s:@socketpath@:${PREFIX}/lua/luasocket/?.lua:g" \
		${FILESDIR}/init.lua > ${WRKSRC}/init.lua
	
do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lua/luasocket
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/luasocket
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/luasocket
	${INSTALL_DATA} ${WRKSRC}/luasocket*.so.*.* ${PREFIX}/lib/luasocket.so
	${INSTALL_DATA} ${WRKSRC}/mime*.so* ${PREFIX}/lib/mime.so
	${INSTALL_DATA} ${WRKSRC}/lua/*.lua ${PREFIX}/lua/luasocket
	${INSTALL_DATA} ${WRKSRC}/etc/*.lua ${PREFIX}/lua/luasocket
	${INSTALL_DATA} ${WRKSRC}/manual/* ${PREFIX}/share/doc/luasocket
	${INSTALL_DATA} ${WRKSRC}/examples/* ${PREFIX}/share/examples/luasocket
	${INSTALL_DATA} ${WRKSRC}/init.lua ${PREFIX}/lua/luasocket

.include <bsd.port.mk>
