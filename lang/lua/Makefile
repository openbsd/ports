# $OpenBSD: Makefile,v 1.26 2006/10/29 19:45:54 pedro Exp $

COMMENT=	"powerful, light-weight programming language"

DISTNAME=	lua-5.1.1
PKGNAME=	${DISTNAME}p1
CATEGORIES=	lang

MASTER_SITES=	http://www.lua.org/ftp/ \
		http://www.tecgraf.puc-rio.br/lua/ftp/ \
		http://ftp.gwdg.de/pub/languages/lua/ \
		http://mirrors.sunsite.dk/lua/ \
		http://ftp.ntua.gr/pub/lang/lua/ \
		http://ftp.chg.ru/pub/lang/lua/

HOMEPAGE=	http://www.lua.org/

MAINTAINER=	Pedro Martelletto <pedro@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SHARED_ONLY=	Yes
SHARED_LIBS=	lua 5.1
WANTLIB=	c m edit curses
NO_REGRESS=	Yes

pre-configure:
	@perl -pi -e 's:\@prefix@:${PREFIX}/:g;' ${WRKSRC}/src/luaconf.h
	@perl -pi -e 's:\@prefix@:${PREFIX}/:g;' ${WRKSRC}/etc/lua.pc

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/pkgconfig
	${INSTALL_DATA} ${WRKSRC}/etc/lua.pc ${PREFIX}/lib/pkgconfig

.include <bsd.port.mk>
