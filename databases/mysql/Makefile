# $OpenBSD: Makefile,v 1.24 2000/06/25 04:53:10 brad Exp $
# $FreeBSD: Makefile,v 1.44 1999/03/04 21:27:58 dirk Exp $

#BROKEN=	installs files automatically in /etc

DISTNAME=	mysql-3.22.32
CATEGORIES=	databases
NEED_VERSION=	1.301
MASTER_SITES=	http://web.tryc.on.ca/mysql/Downloads/MySQL-3.22/ \
		http://mysql.he.net/Downloads/MySQL-3.22/ \
		http://www.buoy.com/mysql/Downloads/MySQL-3.22/ \
		ftp://ftp.netcasting.net/pub/mysql/Downloads/MySQL-3.22/ \
		http://www.mysql.net/Downloads/MySQL-3.22/ \
		http://www.gina.net/mysql/Downloads/MySQL-3.22/ \
		http://mysql.pingzero.net/Downloads/MySQL-3.22/ \
		ftp://ftp.digex.net/pub/packages/database/mysql/Downloads/MySQL-3.22/ 

HOMEPAGE=	http://www.mysql.com/

MAINTAINER=	brad@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

.if ${MACHINE_ARCH} == "sparc"
BROKEN=		"pthreads are currently not working on the SPARC architecture"
.endif

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static \
		 --localstatedir="/var/mysql" \
		 --without-perl \
		 --without-debug \
		 --without-readline \
		 --without-bench \
		 --without-mit-threads \
		 --with-unix-socket-path="/var/mysql/mysql.sock"
CONFIGURE_ENV=	CFLAGS="${CFLAGS} -pthread" \
		CXXFLAGS="${CXXFLAGS} -pthread"

pre-build:      
	@echo ""
	@echo "*** WARNING: you may see an error such as"
	@echo "***       virtual memory exhausted"
	@echo "*** when building this package.  If you do you must increase"
	@echo "*** your limits.  See the man page for your shell and look"
	@echo "*** for the 'limit' or 'ulimit' command."
	@echo ""

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mysql
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mysql/Img
	@rm -f ${WRKDIR}/startup.sh
	@sed -e "s|@PREFIX@|${TRUEPREFIX}|" ${FILESDIR}/startup.sh > ${WRKDIR}/startup.sh
	${INSTALL_SCRIPT} ${WRKDIR}/startup.sh ${PREFIX}/lib/mysql
	cd ${WRKSRC}/Docs; ${INSTALL_DATA} manual.html manual.ps \
	manual_toc.html manual.txt ${PREFIX}/share/doc/mysql
	${INSTALL_DATA} ${WRKSRC}/Docs/Img/*.gif ${PREFIX}/share/doc/mysql/Img

.include <bsd.port.mk>
