# $OpenBSD: Makefile,v 1.17 2006/01/03 23:00:31 alek Exp $

COMMENT=	"powerful, light-weight programming language"

DISTNAME=	lua-5.0.2
PKGNAME=	${DISTNAME}p3
SHARED_LIBS=	lua 5.0 \
		lualib 5.0
CATEGORIES=     lang

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

.if ${MACHINE_ARCH} != "m88k" && ${MACHINE_ARCH} != "vax"
CFLAGS+=	-fPIC
ALL_TARGET+=	all so sobin
.endif

MAKE_FLAGS=	LIBlua_VERSION=${LIBlua_VERSION} \
		LIBlualib_VERSION=${LIBlualib_VERSION}

post-extract:
.for f in init luapkg packages
	@sed -e "s:@pkgconf@:${SYSCONFDIR}/lua/packages.lua:g" \
		${FILESDIR}/${f}.lua > ${WRKSRC}/$f.lua
.endfor

post-patch:
	@perl -pi -e 's:\@initconf@:${SYSCONFDIR}/lua/init.lua:g;' \
		${WRKSRC}/src/lua/lua.c

post-build:
	cd ${WRKDIST} && ${CC} ${CFLAGS} -o bin/bin2c etc/bin2c.c

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include
	${INSTALL_DATA} ${WRKDIST}/include/*.h ${PREFIX}/include
	${INSTALL_DATA} ${WRKDIST}/lib/* ${PREFIX}/lib
	${INSTALL_PROGRAM} ${WRKDIST}/bin/lua ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKDIST}/bin/luac ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKDIST}/bin/bin2c ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/lua
	${INSTALL_DATA} ${WRKDIST}/doc/*.html ${WRKDIST}/doc/*.gif \
		${PREFIX}/share/doc/lua
	${INSTALL_MAN_DIR} ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKDIST}/doc/*.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/lua
	${INSTALL_DATA} ${WRKSRC}/init.lua ${PREFIX}/share/examples/lua
	${INSTALL_DATA} ${WRKSRC}/luapkg.lua ${PREFIX}/share/examples/lua
	${INSTALL_DATA} ${WRKSRC}/packages.lua \
		${PREFIX}/share/examples/lua/packages.lua

.include <bsd.port.mk>
