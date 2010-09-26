# $OpenBSD: Makefile,v 1.14 2010/09/26 17:45:14 sebastia Exp $

COMMENT=	Apache module for logging to an SQL database

REVISION=	5
DISTNAME=	mod_log_sql-1.18
CATEGORIES=	www

HOMEPAGE=	http://www.outoforder.cc/projects/apache/mod_log_sql/

MODULES+=	apache-module

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		z

MODAPACHE_NAME=		sql_log
MODAPACHE_ENABLE=	mod_log_sql-enable
MODAPACHE_MODULE=	mod_log_sql.so

MASTER_SITES=	http://www.outoforder.cc/downloads/mod_log_sql/
EXTRACT_SUFX=	.tar.bz2

LIB_DEPENDS=	lib/mysql/mysqlclient.>=10::databases/mysql

NO_REGRESS=	Yes

WRKSRC=		${WRKDIR}/mod_log_sql
EXAMPLES=	create_tables.sql make_combined_log.pl

APXS=		/usr/sbin/apxs
FLAGS=		-I${LOCALBASE}/include/mysql -L${LOCALBASE}/lib \
		-DWANT_SSL_LOGGING -lmysqlclient -lz

do-build:
	cd ${WRKBUILD} && \
		${APXS} -c -o mod_log_sql.so ${FLAGS} mod_log_sql.c
	@${MODAPACHE_CREATE_ENABLE_SCRIPT}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mod_log_sql
	for p in ${EXAMPLES}; do \
		${INSTALL_DATA} ${WRKSRC}/$$p \
			${PREFIX}/share/examples/mod_log_sql; \
	done
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mod_log_sql
	${INSTALL_DATA} ${WRKSRC}/Documentation/HTML/* \
		${PREFIX}/share/doc/mod_log_sql
	${MODAPACHE_INSTALL}

.include <bsd.port.mk>
