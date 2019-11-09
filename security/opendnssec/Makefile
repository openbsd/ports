# $OpenBSD: Makefile,v 1.20 2019/11/09 10:17:45 pvk Exp $

COMMENT=	open-source turn-key solution for DNSSEC

DISTNAME=	opendnssec-2.1.5

CATEGORIES=	security

HOMEPAGE=	https://www.opendnssec.org/

MAINTAINER=	Pavel Korovin <pvk@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += c crypto iconv ldns lzma m pthread xml2 z

MASTER_SITES=	https://dist.opendnssec.org/source/

BUILD_DEPENDS=	devel/cunit

LIB_DEPENDS=	converters/libiconv \
		net/ldns \
		textproc/libxml

TEST_DEPENDS=	${BUILD_DEPENDS} \
		security/softhsm2

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/opendnssec

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --disable-pedantic

FLAVORS=	sqlite3 mysql
FLAVOR?=	sqlite3

.if ${FLAVOR:Msqlite3}
WANTLIB+=	sqlite3
LIB_DEPENDS+=	databases/sqlite3
.endif

.if ${FLAVOR:Mmysql}
CONFIGURE_ARGS+= --with-database-backend=mysql
WANTLIB+=	mysqlclient_r ssl ${COMPILER_LIBCXX}
LIB_DEPENDS+=	databases/mariadb
.endif

.if ${FLAVOR:Msqlite3} && ${FLAVOR:Mmysql}
ERRORS+= "Fatal: mutually exclusive flavors: ${FLAVORS}"
.endif

SUBST_TARGETS=	${WRKSRC}/enforcer/utils/1.4-2.0_db_convert/README.md \
	${WRKSRC}/enforcer/utils/1.4-2.0_db_convert/convert_{mysql,sqlite} \
	${WRKSRC}/enforcer/utils/convert_{mysql_to_sqlite,sqlite_to_mysql} \
	${WRKSRC}/contrib/ods-sequencer/ods-sequencer-submit.sh \
	${WRKSRC}/MIGRATION

post-patch:
	${SUBST_CMD} ${SUBST_TARGETS}

# regress-db target doesn't currently work
# https://github.com/opendnssec/opendnssec/commit/6b1b0da4a7ba5ae658aca49a45a45be4867f6806
pre-test:
	sed -i 's/^check: regress-db/\#check: regress-db/' \
		${WRKSRC}/enforcer/src/db/test/Makefile

post-install:
	sed -i 's,#!/bin/bash,#!/bin/sh,' \
		${WRKSRC}/contrib/ods-sequencer/ods-sequencer-submit.sh \
		${WRKSRC}/contrib/simple-dnskey-mailer/simple-dnskey-mailer.sh
	@find ${WRKSRC} -type f \
		\( -name '*.beforesubst' -o -name '*.orig' \) -delete
	${INSTALL_SCRIPT} ${WRKSRC}/enforcer/utils/convert_mysql_to_sqlite \
		${PREFIX}/sbin/ods-convert_mysql_to_sqlite
	${INSTALL_SCRIPT} ${WRKSRC}/enforcer/utils/convert_sqlite_to_mysql \
		${PREFIX}/sbin/ods-convert_sqlite_to_mysql
	${INSTALL_SCRIPT} ${WRKSRC}/enforcer/utils/1.4-2.0_db_convert/convert_mysql \
		${PREFIX}/sbin/ods-migrate-mysql
	${INSTALL_SCRIPT} ${WRKSRC}/enforcer/utils/1.4-2.0_db_convert/convert_sqlite \
		${PREFIX}/sbin/ods-migrate-sqlite3
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/opendnssec/
	${INSTALL_DATA} ${WRKSRC}/{LICENSE,MIGRATION,NEWS} \
		${PREFIX}/share/doc/opendnssec/
	${INSTALL_DATA} ${WRKSRC}/enforcer/utils/1.4-2.0_db_convert/README.md \
		${PREFIX}/share/doc/opendnssec/MIGRATE_1.4-2.0.md
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/opendnssec/ods-sequencer/
	${INSTALL_DATA} ${WRKSRC}/contrib/ods-sequencer/* \
		${PREFIX}/share/examples/opendnssec/ods-sequencer/
	${INSTALL_DATA} ${WRKSRC}/contrib/simple-dnskey-mailer/simple-dnskey-mailer.sh \
		${PREFIX}/share/examples/opendnssec/
	${INSTALL_DATA_DIR} ${PREFIX}/share/opendnssec/migration/
	${INSTALL_DATA} ${WRKSRC}/enforcer/src/db/schema.* ${PREFIX}/share/opendnssec/
	${INSTALL_DATA} ${WRKSRC}/enforcer/utils/1.4-2.0_db_convert/find_problematic_zones.sql \
		${PREFIX}/share/opendnssec/migration/
	${INSTALL_DATA} ${WRKSRC}/enforcer/utils/1.4-2.0_db_convert/sqlite_convert.sql \
		${PREFIX}/share/opendnssec/migration/migrate-sqlite.sql
	${INSTALL_DATA} ${WRKSRC}/enforcer/utils/1.4-2.0_db_convert/mysql_convert.sql \
		${PREFIX}/share/opendnssec/migration/migrate-mysql.sql

.include <bsd.port.mk>
