# $OpenBSD: Makefile,v 1.2 2006/02/08 04:54:50 david Exp $
SHARED_ONLY=	Yes

COMMENT=	"cgi tool for the lua language"
DISTNAME=	cgilua-5.0b2
CATEGORIES=	www

MASTER_SITES=	http://luaforge.net/frs/download.php/404/
HOMEPAGE=	http://www.keplerproject.org/cgilua

MAINTAINER=	Pedro Martelletto <pedro@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

PREFIX=		/var/www
NO_REGRESS=	Yes
USE_GMAKE=	Yes
ALL_TARGET=	cgi
BUILD_DEPENDS=	::lang/lua ::devel/luafs ::devel/luacompat
RUN_DEPENDS=	${BUILD_DEPENDS}

CGILUA_FILES=	config.lua cookies.lua post.lua prep.lua readuntil.lua\
		serialize.lua session.lua urlcode.lua

post-extract:
	@sed -e "s:@cgiluapath@:${PREFIX}/lua/cgilua/?.lua:g"\
                ${FILESDIR}/init.lua > ${WRKSRC}/init.lua

pre-configure:
	@perl -pi -e 's:\@initconf@:${SYSCONFDIR}/lua/init.lua:g;'\
                ${WRKSRC}/launcher/_cgi/t_cgi.lua

do-install:
	${INSTALL_SCRIPT_DIR} ${PREFIX}/cgi-bin
	${INSTALL_SCRIPT} ${WRKSRC}/launcher/_cgi/_cgi ${PREFIX}/cgi-bin/_cgi
	${INSTALL_SCRIPT} ${WRKSRC}/launcher/_cgi/cgi.lua\
		 ${PREFIX}/cgi-bin/cgi.lua
	${INSTALL_DATA_DIR} ${PREFIX}/lua/cgilua
	${INSTALL_DATA_DIR} ${PREFIX}/lua/cgilua/cgilua
	${INSTALL_DATA} ${WRKSRC}/init.lua ${PREFIX}/lua/cgilua
	${INSTALL_DATA} ${WRKSRC}/clmain/cgilua/cgilua.lua ${PREFIX}/lua/cgilua
.for file in ${CGILUA_FILES}
	${INSTALL_DATA} ${WRKSRC}/clmain/cgilua/${file}\
		${PREFIX}/lua/cgilua/cgilua/${file}
.endfor
	${INSTALL_DATA} ${WRKSRC}/clmain/stable.lua\
		${PREFIX}/lua/cgilua/cgilua/stable.lua
	${INSTALL_DATA_DIR} ${PREFIX}/doc
	${INSTALL_DATA} ${WRKSRC}/doc/*.{gif,html} ${PREFIX}/doc

.include <bsd.port.mk>
