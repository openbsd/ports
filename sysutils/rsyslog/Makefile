# $OpenBSD: Makefile,v 1.6 2011/05/01 11:43:06 ajacoutot Exp $

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

REVISION-main =		0

HOMEPAGE =		http://www.rsyslog.com/

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB-main +=		c gmp hogweed nettle gnutls iconv intl pthread
WANTLIB-main +=		relp tasn1 z
WANTLIB-mysql +=	crypto m mysqlclient ssl z
WANTLIB-pgsql +=	crypto com_err pq ssl

LIB_DEPENDS-main =	security/gnutls \
			sysutils/librelp
LIB_DEPENDS-mysql =	databases/mysql
RUN_DEPENDS-mysql =	${FULLPKGNAME-main}:${BASE_PKGPATH},-main
LIB_DEPENDS-pgsql =	databases/postgresql
RUN_DEPENDS-pgsql =	${FULLPKGNAME-main}:${BASE_PKGPATH},-main

MASTER_SITES =		http://www.rsyslog.com/files/download/rsyslog/ \
			http://download.rsyslog.com/rsyslog/

CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.65
USE_LIBTOOL =		Yes
LIBTOOL_FLAGS = 	--tag=disable-static
USE_GROFF =	Yes
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--enable-pgsql \
			--enable-mysql \
			--enable-mail \
			--enable-gnutls \
			--enable-relp
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include \
			  -DSYSLOGD_PIDNAME=\\\"rsyslogd.pid\\\" \
			  -DCONFIGFILE=\\\"${SYSCONFDIR}/rsyslog.conf\\\""

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/rsyslog
	${INSTALL_DATA} ${WRKSRC}/rsyslog.conf \
	    ${PREFIX}/share/examples/rsyslog
	${INSTALL_DATA} ${WRKSRC}/plugins/ommysql/createDB.sql \
	    ${PREFIX}/share/examples/rsyslog/createDB_mysql.sql
	${INSTALL_DATA} ${WRKSRC}/plugins/ompgsql/createDB.sql \
	    ${PREFIX}/share/examples/rsyslog/createDB_pgsql.sql

.include <bsd.port.mk>
