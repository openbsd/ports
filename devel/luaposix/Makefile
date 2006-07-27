# $OpenBSD: Makefile,v 1.5 2006/07/27 21:13:56 pedro Exp $

BROKEN=		"Pending update for Lua 5.1"
COMMENT=	"posix library for the lua language"
NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

DISTNAME=	lposix
DATE=		20041216
PKGNAME=	luaposix-${DATE}p0
DIST_SUBDIR=	luaposix-${DATE}
WRKDIST=	${WRKDIR}/posix
CATEGORIES=	devel

MASTER_SITES=	${HOMEPAGE}5.0/
HOMEPAGE=	http://www.tecgraf.puc-rio.br/~lhf/ftp/lua/

MAINTAINER=	Pedro Martelletto <pedro@openbsd.org>

# Public domain
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_REGRESS=	Yes
BUILD_DEPENDS=	::lang/lua
RUN_DEPENDS=	${BUILD_DEPENDS}

post-extract:
	@sed -e "s:@posixpath@:${PREFIX}/lua/luaposix/?.lua:g" \
		${FILESDIR}/init.lua > ${WRKSRC}/init.lua

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lua/luaposix
	${INSTALL_DATA} ${WRKSRC}/luaposix.so ${PREFIX}/lib
	${INSTALL_DATA} ${FILESDIR}/posix.lua ${PREFIX}/lua/luaposix
	${INSTALL_DATA} ${WRKSRC}/init.lua ${PREFIX}/lua/luaposix

.include <bsd.port.mk>
