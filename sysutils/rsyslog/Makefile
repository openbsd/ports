# $OpenBSD: Makefile,v 1.20 2014/09/13 18:09:22 brad Exp $

BROKEN-hppa =		lack of atomic ops
BROKEN-mips64 =		lack of atomic ops

SHARED_ONLY =		Yes

COMMENT-main =		syslog daemon supporting databases, TCP, SSL, RELP
COMMENT-mysql =		mysql plugin for rsyslog
COMMENT-pgsql =		postgresql plugin for rsyslog

MULTI_PACKAGES =	-main -mysql -pgsql

V =			4.6.4
DISTNAME =		rsyslog-$V
PKGNAME-main =		rsyslog-$V
PKGNAME-mysql =		rsyslog-mysql-$V
PKGNAME-pgsql =		rsyslog-pgsql-$V
CATEGORIES =		sysutils

REVISION-main =		5
REVISION-mysql =	5
REVISION-pgsql =	3

HOMEPAGE =		http://www.rsyslog.com/

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		devel/gettext

WANTLIB-main +=		c gmp hogweed nettle gnutls pthread p11-kit
WANTLIB-main +=		relp tasn1 z ${MODGETTEXT_WANTLIB}
WANTLIB-mysql +=	crypto m mysqlclient ssl z
WANTLIB-pgsql +=	crypto pq ssl

LIB_DEPENDS-main =	security/gnutls \
			sysutils/librelp
LIB_DEPENDS-mysql =	databases/mariadb
RUN_DEPENDS-mysql =	${PKGNAME-main}:${PKGPATH},-main
LIB_DEPENDS-pgsql =	databases/postgresql
RUN_DEPENDS-pgsql =	${PKGNAME-main}:${PKGPATH},-main

MASTER_SITES =		http://www.rsyslog.com/files/download/rsyslog/ \
			http://download.rsyslog.com/rsyslog/

CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.65
LIBTOOL_FLAGS = 	--tag=disable-static
USE_GROFF =	Yes
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--enable-pgsql \
			--enable-mysql \
			--enable-mail \
			--enable-gnutls \
			--enable-relp
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/rsyslog
	${INSTALL_DATA} ${WRKSRC}/rsyslog.conf \
	    ${PREFIX}/share/examples/rsyslog
	${INSTALL_DATA} ${WRKSRC}/plugins/ommysql/createDB.sql \
	    ${PREFIX}/share/examples/rsyslog/createDB_mysql.sql
	${INSTALL_DATA} ${WRKSRC}/plugins/ompgsql/createDB.sql \
	    ${PREFIX}/share/examples/rsyslog/createDB_pgsql.sql

.include <bsd.port.mk>
