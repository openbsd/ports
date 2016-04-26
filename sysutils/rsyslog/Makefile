# $OpenBSD: Makefile,v 1.31 2016/04/26 10:28:19 sthen Exp $

BROKEN-powerpc =	64-bit atomics (__sync_bool_compare_and_swap_8)

COMMENT-main =		syslog daemon supporting databases, TCP, SSL, RELP
COMMENT-mysql =		MySQL plugin for rsyslog
COMMENT-pgsql =		PostgreSQL plugin for rsyslog

MULTI_PACKAGES =	-main -mysql -pgsql

V =			8.16.0
DISTNAME =		rsyslog-$V
PKGNAME-main =		rsyslog-$V
PKGNAME-mysql =		rsyslog-mysql-$V
PKGNAME-pgsql =		rsyslog-pgsql-$V
CATEGORIES =		sysutils

HOMEPAGE =		http://www.rsyslog.com/

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB-main +=		${MODGETTEXT_WANTLIB}
WANTLIB-main +=		c estr ffi gcrypt gmp gnutls gpg-error hogweed idn
WANTLIB-main +=		json-c nettle p11-kit pthread relp tasn1 uuid z

WANTLIB-mysql +=	crypto m mysqlclient pthread ssl stdc++ z

WANTLIB-pgsql +=	crypto pq ssl

MODULES =		devel/gettext

LIB_DEPENDS-main =	devel/json-c \
			devel/libestr>=0.1.2 \
			security/libgcrypt \
			security/gnutls \
			sysutils/librelp>=1.2.9
# XXX should port to using libc UUID functions
LIB_DEPENDS-main +=	sysutils/e2fsprogs
LIB_DEPENDS-mysql =	databases/mariadb
RUN_DEPENDS-mysql =	${PKGNAME-main}:${PKGPATH},-main
LIB_DEPENDS-pgsql =	databases/postgresql
RUN_DEPENDS-pgsql =	${PKGNAME-main}:${PKGPATH},-main

MASTER_SITES =		http://www.rsyslog.com/files/download/rsyslog/ \
			http://download.rsyslog.com/rsyslog/

CONFIGURE_STYLE =	gnu
LIBTOOL_FLAGS = 	--tag=disable-static
CONFIGURE_ARGS +=	--enable-pgsql \
			--enable-mysql \
			--enable-mail \
			--enable-gnutls \
			--enable-relp \
			--disable-liblogging-stdlog
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include"

post-install:
	rm ${PREFIX}/lib/rsyslog/*.la
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/rsyslog
	${SUBST_DATA} ${FILESDIR}/rsyslog.conf \
	    ${PREFIX}/share/examples/rsyslog/rsyslog.conf
	${INSTALL_DATA} ${WRKSRC}/plugins/ommysql/createDB.sql \
	    ${PREFIX}/share/examples/rsyslog/createDB_mysql.sql
	${INSTALL_DATA} ${WRKSRC}/plugins/ompgsql/createDB.sql \
	    ${PREFIX}/share/examples/rsyslog/createDB_pgsql.sql

.if ${MACHINE_ARCH:Mi386}
# 64-bit atomics
CFLAGS += -march=i686
.endif

.include <bsd.port.mk>
