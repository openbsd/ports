# $OpenBSD: Makefile,v 1.39 2010/10/18 19:20:42 espie Exp $

COMMENT=	powerful, light-weight programming language

DISTNAME=	lua-5.1.4
PKGNAME=	${DISTNAME}p1
CATEGORIES=	lang

MASTER_SITES=	http://www.lua.org/ftp/ \
		http://www.tecgraf.puc-rio.br/lua/ftp/ \
		http://ftp.gwdg.de/pub/languages/lua/ \
		http://ftp.ntua.gr/pub/lang/lua/ \
		http://ftp.chg.ru/pub/lang/lua/

PATCHFILES=	patch-${DISTNAME}-2
PATCH_DIST_ARGS=-z .bak.orig -d ${WRKSRC}/src

HOMEPAGE=	http://www.lua.org/

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SHARED_ONLY=	Yes
SHARED_LIBS=	lua 5.1
MAKE_FLAGS+=	LIBlua_VERSION="${LIBlua_VERSION}"
WANTLIB=	c m edit curses
USE_GROFF =	Yes
NO_REGRESS=	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/etc/lua.pc

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/pkgconfig
	${INSTALL_DATA} ${WRKSRC}/etc/lua.pc ${PREFIX}/lib/pkgconfig

.include <bsd.port.mk>
