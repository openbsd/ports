# $OpenBSD: Makefile,v 1.10 2004/04/08 01:44:41 jolan Exp $

COMMENT=	"powerful, light-weight programming language"

DISTNAME=	lua-5.0.2
CATEGORIES=     lang

MASTER_SITES=	http://www.lua.org/ftp/ \
		http://www.tecgraf.puc-rio.br/lua/ftp/ \
		http://ftp.gwdg.de/pub/languages/lua/ \
		http://mirrors.sunsite.dk/lua/ \
		http://ftp.ntua.gr/pub/lang/lua/ \
		http://ftp.chg.ru/pub/lang/lua/

HOMEPAGE=	http://www.lua.org/

MAINTAINER=	Pedro Martelletto <pbastos@inf.puc-rio.br>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_REGRESS=	Yes

post-build:
	cd ${WRKDIST} && ${CC} ${CFLAGS} -o bin/bin2c etc/bin2c.c
#	and recompile with shared libs
	${BUILD_SHARED}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include
	${INSTALL_DATA} ${WRKDIST}/include/*.h ${PREFIX}/include
	${INSTALL_DATA} ${WRKDIST}/lib/* ${PREFIX}/lib
	${INSTALL_PROGRAM} ${WRKDIST}/bin/lua ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKDIST}/bin/luac ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKDIST}/bin/bin2c ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/lua
	${INSTALL_DATA} ${WRKDIST}/doc/*.html ${WRKDIST}/doc/*.gif ${PREFIX}/share/doc/lua
	${INSTALL_DATA_DIR} ${PREFIX}/man/man1
	${INSTALL_DATA} ${WRKDIST}/doc/*.1 ${PREFIX}/man/man1

.if defined(NO_SHARED_LIBS)
BUILD_SHARED=:
.else
BUILD_SHARED=cd ${WRKDIST} && \
	${CC} ${LDFLAGS} -shared -fPIC -o lib/liblua.so.5.0 src/*.o && \
	${CC} ${LDFLAGS} -shared -fPIC -o lib/liblualib.so.5.0 src/lib/*.o && \
	rm bin/lua && ${MAKE}
.endif

.include <bsd.port.mk>
