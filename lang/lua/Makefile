# $OpenBSD: Makefile,v 1.1.1.1 2000/08/16 03:15:41 kevlo Exp $

DISTNAME=	lua-3.2
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

MAINTAINER=	dbt@meat.net

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=	${WRKDIR}/lua

post-build:
	(cd ${WRKDIST} && gcc -o bin/bin2c etc/bin2c.c)
#	and recompile with shared libs
	(cd ${WRKDIST} && gcc -shared -o lib/liblua.so.3.2 src/*.o)
	(cd ${WRKDIST} && gcc -shared -o lib/liblualib.so.3.2 src/lib/*.o)
	(cd ${WRKDIST} && rm bin/lua && make )
do-install:
	${INSTALL_DATA} ${WRKDIST}/include/*.h ${PREFIX}/include
	${INSTALL_DATA} ${WRKDIST}/lib/* ${PREFIX}/lib
	${INSTALL_PROGRAM} ${WRKDIST}/bin/lua ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKDIST}/bin/luac ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKDIST}/bin/bin2c ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/lua/docs
	${INSTALL_DATA} ${WRKDIST}/doc/* ${PREFIX}/share/lua/docs

.include <bsd.port.mk>
