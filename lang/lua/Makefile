# $OpenBSD: Makefile,v 1.23 2006/07/30 04:25:41 pedro Exp $

COMMENT=	"powerful, light-weight programming language"

DISTNAME=	lua-5.1
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

WANTLIB=	c m edit curses
NO_REGRESS=	Yes

post-patch:
	@perl -pi -e 's:\@prefix@:${PREFIX}/:g;' ${WRKSRC}/src/luaconf.h

.include <bsd.port.mk>
