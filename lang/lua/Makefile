# $OpenBSD: Makefile,v 1.5 2001/03/26 08:49:09 wilfried Exp $

DISTNAME=	lua-4.0
CATEGORIES=     lang
NEED_VERSION=	1.310
MASTER_SITES=	ftp://ftp.tecgraf.puc-rio.br/pub/lua/ \
		ftp://csg.uwaterloo.ca/pub/lhf/lua/ \
		ftp://ftp.freesoftware.com/pub/languages/lua/ \
		ftp://ftp.ntua.gr/pub/lang/lua/ \
		ftp://ftp.uni-trier.de/pub/languages/lua/ \
		ftp://ftp.gwdg.de/pub/languages/lua/ \
		ftp://ftp.u-aizu.ac.jp/pub/lang/lua/ \
		ftp://ftp.ucore.com/lua/dist/ \
		http://www.tecgraf.puc-rio.br/lua/ftp/ \
		http://csg.uwaterloo.ca/~lhf/lua/ftp/ \
		http://ftp.gwdg.de/pub/languages/lua/

HOMEPAGE=	http://www.tecgraf.puc-rio.br/lua/

MAINTAINER=	David Terrell <dbt@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=	${WRKDIR}/lua

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

.include <bsd.port.mk>

.if defined(NO_SHARED_LIBS)
BUILD_SHARED=:
.else
BUILD_SHARED=cd ${WRKDIST} && \
	${CC} ${LDFLAGS} -shared -fPIC -o lib/liblua.so.4.0 src/*.o && \
	${CC} ${LDFLAGS} -shared -fPIC -o lib/liblualib.so.4.0 src/lib/*.o && \
	rm bin/lua && ${MAKE}
.endif
