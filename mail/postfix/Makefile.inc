# $OpenBSD: Makefile.inc,v 1.94 2019/07/13 12:05:00 sthen Exp $

COMMENT=	fast, secure sendmail replacement

DISTNAME=	postfix-${VERSION}
PKGNAME=	postfix-${VERSION:S/-/./}
CATEGORIES=	mail

MASTER_SITE_POSTFIX= \
		http://ftp.porcupine.org/mirrors/postfix-release/ \
		http://de.postfix.org/ftpmirror/ \
		http://mirror.tje.me.uk/pub/mirrors/postfix-release/ \
		http://mirror.postfix.jp/postfix-release/ \
		ftp://ftp.porcupine.org/mirrors/postfix-release/ \
		ftp://ftp.cs.uu.nl/mirror/postfix/postfix-release/

DIST_SUBDIR=	postfix
DISTFILES=	${DISTNAME}${EXTRACT_SUFX}

HOMEPAGE=	http://www.postfix.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# IBM Public License 1.0 / Eclipse Public License 2.0
PERMIT_PACKAGE=	Yes

LIB_DEPENDS+=	devel/pcre

MAKE_DEBUG?=
MAKE_CCARGS+=	-I. -I../../include
MAKE_CCARGS+=	-DDEF_CONFIG_DIR=\"${SYSCONFDIR}/postfix\"
MAKE_CCARGS+=	-DDEF_DATA_DIR=\"/var/postfix\"
MAKE_CCARGS+=	-DHAS_SQLITE
MAKE_CCARGS+=	-DUSE_TLS
MAKE_CCARGS+=	-DUSE_SASL_AUTH
# no UTF-8 support for now
MAKE_CCARGS+=	-DNO_EAI
MAKE_AUXLIBS+=	-lssl -lcrypto -lsqlite3 -pthread

WANTLIB=	c crypto pcre pthread sqlite3 ssl
LIB_DEPENDS+=	databases/sqlite3

ALL_TARGET=	default

NO_TEST=	Yes

FLAVORS+=	sasl2 ldap mysql pgsql db4
FLAVOR?=

.if ${FLAVOR:Msasl2}
LIB_DEPENDS+=	security/cyrus-sasl2
WANTLIB+=	sasl2
MAKE_CCARGS+=	-DUSE_CYRUS_SASL -I${LOCALBASE}/include -I${LOCALBASE}/include/sasl
MAKE_AUXLIBS+=	-L${LOCALBASE}/lib -lsasl2
.endif

.if ${FLAVOR:Mldap}
LIB_DEPENDS+=	databases/openldap>=2,<3
WANTLIB+=	ldap>=2 lber
MAKE_CCARGS+=	-DHAS_LDAP -I${LOCALBASE}/include
MAKE_AUXLIBS+=	-L${LOCALBASE}/lib -lldap -llber
.endif

.if ${FLAVOR:Mmysql}
LIB_DEPENDS+=	databases/mariadb
WANTLIB+=	lib/mysql/mysqlclient
MAKE_CCARGS+=	-DHAS_MYSQL -I${LOCALBASE}/include/mysql
MAKE_AUXLIBS+=	-L${LOCALBASE}/lib/mysql -lmysqlclient
.endif

.if ${FLAVOR:Mpgsql}
LIB_DEPENDS+=	databases/postgresql
WANTLIB+=	pq>=3
MAKE_CCARGS+=	-DHAS_PGSQL -I${LOCALBASE}/include/postgresql
MAKE_AUXLIBS+=	-L${LOCALBASE}/lib -lpq
.endif

.if ${FLAVOR:Mdb4}
LIB_DEPENDS+=	databases/db/v4>=4,<5
WANTLIB+=	lib/db4/db>=4
MAKE_CCARGS+=	-I${LOCALBASE}/include/db4
MAKE_AUXLIBS+=	-L${LOCALBASE}/lib/db4 -ldb
.endif

pre-configure:
	@perl -pi -e 's,/cyrus/bin,${LOCALBASE}/libexec/cyrus-imapd,g' \
		${WRKSRC}/conf/master.cf

do-configure:
	@cd ${WRKSRC}; ${MAKE_PROGRAM} makefiles \
		CC="${CC}" OPT="${CFLAGS}" DEBUG="${MAKE_DEBUG}" \
		CCARGS='${MAKE_CCARGS}' AUXLIBS="${MAKE_AUXLIBS}"

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/postfix
	@(cd ${WRKSRC}; sh postfix-install \
		-non-interactive \
		mail_owner=_postfix \
		setgid_group=_postdrop \
		install_root=${WRKINST} \
		data_directory=/var/postfix \
		queue_directory=/var/spool/postfix \
		daemon_directory=${TRUEPREFIX}/libexec/postfix \
		command_directory=${TRUEPREFIX}/sbin \
		sendmail_path=${TRUEPREFIX}/sbin/sendmail \
		newaliases_path=${TRUEPREFIX}/sbin/newaliases \
		mailq_path=${TRUEPREFIX}/sbin/mailq \
		manpage_directory=${TRUEPREFIX}/man \
		readme_directory=${TRUEPREFIX}/share/doc/postfix/readme \
		html_directory=${TRUEPREFIX}/share/doc/postfix/html \
		)
	${INSTALL_SCRIPT} ${FILESDIR}/postfix-enable ${PREFIX}/sbin
	${INSTALL_SCRIPT} ${FILESDIR}/postfix-disable ${PREFIX}/sbin
	${INSTALL_SCRIPT} ${FILESDIR}/postfix-install ${PREFIX}/sbin
	${INSTALL_SCRIPT} ${WRKSRC}/auxiliary/qshape/qshape.pl ${PREFIX}/sbin/qshape
	${INSTALL_MAN} ${WRKSRC}/man/man1/qshape.1 ${PREFIX}/man/man1
	@mv ${WRKINST}${SYSCONFDIR}/postfix/* ${PREFIX}/share/examples/postfix
	@rm -fr ${WRKINST}/var/postfix
	@rm -fr ${WRKINST}/var/spool/postfix
	@chown -h ${BINOWN}:${BINGRP} ${PREFIX}/{sbin,libexec/postfix}/*
	@chown -R ${MANOWN}:${MANGRP} ${PREFIX}/man
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share
