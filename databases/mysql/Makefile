# $OpenBSD: Makefile,v 1.7 1999/12/02 03:47:36 brad Exp $
# $FreeBSD: Makefile,v 1.44 1999/03/04 21:27:58 dirk Exp $

DISTNAME=	mysql-3.22.22
PKGNAME=	mysql-3.22.22
CATEGORIES=	databases
MASTER_SITES=	http://www.mysql.org/Downloads/MySQL-3.22/ \
		http://web.tryc.on.ca/mysql/Downloads/MySQL-3.22/ \
		http://mysql.he.net/Downloads/MySQL-3.22/ \
		http://www.buoy.com/mysql/Downloads/MySQL-3.22/ \
		ftp://ftp.netcasting.net/pub/mysql/Downloads/MySQL-3.22/ \
		http://www.mysql.net/Downloads/MySQL-3.22/ \
		http://www.gina.net/mysql/Downloads/MySQL-3.22/ \
		http://mysql.pingzero.net/Downloads/MySQL-3.22/ \
		ftp://ftp.digex.net/pub/database/mysql/Downloads/MySQL-3.22/

MAINTAINER=	ports@openbsd.org

.if ${MACHINE_ARCH} == "sparc"
BROKEN=		"pthreads are currently not working SPARC"
.endif

GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--localstatedir="/var/db/mysql" \
		--without-perl \
		--without-debug \
		--without-readline \
		--without-bench \
		--without-mit-threads

DOCS=	manual.html manual.ps manual_toc.html manual.txt

pre-install:
	@sed -e "s|@PREFIX@|${PREFIX}|" ${FILESDIR}/startup.sh > ${WRKDIR}/startup.sh
.if !defined(PACKAGE_BUILDING)
	@env ${MAKE_ENV} perl ${SCRIPTDIR}/check_old_version
.endif

post-install:
	@mkdir -p ${PREFIX}/share/doc/mysql
	@mkdir -p ${PREFIX}/share/mysql/mysql
.if !defined(PACKAGE_BUILDING)
	${PREFIX}/bin/mysql_install_db
.endif
	${INSTALL_SCRIPT} ${WRKDIR}/startup.sh ${PREFIX}/lib/mysql
.for doc in ${DOCS}
	${INSTALL_DATA} ${WRKSRC}/Docs/${doc} ${PREFIX}/share/doc/mysql
.endfor
	@install-info ${PREFIX}/info/mysql.info ${PREFIX}/info/dir
	@${LDCONFIG} -m ${PREFIX}/lib/mysql

.include <bsd.port.mk>
