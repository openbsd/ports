# $OpenBSD: Makefile,v 1.1.1.1 2003/05/26 15:19:32 naddy Exp $

COMMENT=	"Apache module for logging to an SQL database"

# This port currently only works with archs supporting dynamic loading
# and has Apache that supports DSO's.
NOT_FOR_ARCHS=	${NO_SHARED_ARCHS} 

DISTNAME=	mod_log_sql-1.18
CATEGORIES=	www

HOMEPAGE=	http://www.grubbybaby.com/mod_log_sql/
MASTER_SITES=	${HOMEPAGE}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	Xavier Santolaria <xavier@santolaria.net>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	lib/mysql/mysqlclient.10:mysql-client-3.23.*:databases/mysql

NO_REGRESS=	Yes

WRKSRC=		${WRKDIR}/mod_log_sql
EXAMPLES=	create_tables.sql make_combined_log.pl

APXS=		/usr/sbin/apxs
FLAGS=		-I${LOCALBASE}/include/mysql -L${LOCALBASE}/lib \
		-DWANT_SSL_LOGGING -lmysqlclient -lz

do-build:
	cd ${WRKBUILD} && \
		${APXS} -c -o mod_log_sql.so ${FLAGS} mod_log_sql.c
	@sed 's,!!PREFIX!!,${PREFIX},' \
		< ${FILESDIR}/mod_log_sql-enable \
		> ${WRKBUILD}/mod_log_sql-enable

do-install:
	${INSTALL_DATA} ${WRKBUILD}/mod_log_sql.so ${PREFIX}/lib
	${INSTALL_SCRIPT} ${WRKBUILD}/mod_log_sql-enable ${PREFIX}/sbin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mod_log_sql
	for p in ${EXAMPLES}; do \
		${INSTALL_DATA} ${WRKSRC}/$$p \
			${PREFIX}/share/examples/mod_log_sql; \
	done
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mod_log_sql
	${INSTALL_DATA} ${WRKSRC}/Documentation/HTML/* \
		${PREFIX}/share/doc/mod_log_sql

.include <bsd.port.mk>
