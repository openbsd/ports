# $OpenBSD: Makefile.inc,v 1.80 2011/03/10 12:07:24 sthen Exp $

COMMENT=	fast, secure sendmail replacement

DISTNAME=	postfix-${VERSION}
PKGNAME=	postfix-${VERSION:S/-/./}
CATEGORIES=	mail

MASTER_SITE_POSTFIX= \
		http://ftp.porcupine.org/mirrors/postfix-release/ \
		ftp://ftp.porcupine.org/mirrors/postfix-release/ \
		ftp://ftp.merit.edu/postfix/ \
		ftp://ftp.sunet.se/pub/unix/mail/postfix/ \
		ftp://ftp.tau.ac.il/pub/unix/mail/postfix/ \
		ftp://ftp.cs.uu.nl/mirror/postfix/postfix-release/

DIST_SUBDIR=	postfix
DISTFILES=	${DISTNAME}${EXTRACT_SUFX}

HOMEPAGE=	http://www.postfix.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

PERMIT_PACKAGE_CDROM=	cannot be sold, see section 4 of license
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	cannot be sold, see section 4 of license
PERMIT_DISTFILES_FTP=	yes

LIB_DEPENDS+=	devel/pcre

MAKE_DEBUG?=
MAKE_CCARGS+=	-I. -I../../include
MAKE_CCARGS+=	-DDEF_CONFIG_DIR=\"${SYSCONFDIR}/postfix\"
MAKE_CCARGS+=	-DDEF_DATA_DIR=\"/var/postfix\"
MAKE_CCARGS+=	-DUSE_TLS
MAKE_CCARGS+=	-DUSE_SASL_AUTH
MAKE_AUXLIBS+=	-lssl -lcrypto

WANTLIB=	c crypto ssl pcre

ALL_TARGET=	default

NO_REGRESS=	Yes

FLAVORS+=	sasl2 ldap mysql pgsql db4 sqlite
FLAVOR?=

.if ${FLAVOR:L:Msasl2}
LIB_DEPENDS+=	security/cyrus-sasl2
WANTLIB+=	sasl2
MAKE_CCARGS+=	-DUSE_CYRUS_SASL -I${LOCALBASE}/include -I${LOCALBASE}/include/sasl
MAKE_AUXLIBS+=	-L${LOCALBASE}/lib -lsasl2
.endif

.if ${FLAVOR:L:Mldap}
LIB_DEPENDS+=	databases/openldap>=2,<3
WANTLIB+=	ldap>=2 lber
MAKE_CCARGS+=	-DHAS_LDAP -I${LOCALBASE}/include
MAKE_AUXLIBS+=	-L${LOCALBASE}/lib -lldap -llber
.endif

.if ${FLAVOR:L:Mmysql}
LIB_DEPENDS+=	databases/mysql
WANTLIB+=	lib/mysql/mysqlclient>=10
MAKE_CCARGS+=	-DHAS_MYSQL -I${LOCALBASE}/include/mysql
MAKE_AUXLIBS+=	-L${LOCALBASE}/lib/mysql -lmysqlclient
.endif

.if ${FLAVOR:L:Mpgsql}
LIB_DEPENDS+=	databases/postgresql
WANTLIB+=	pq>=3
MAKE_CCARGS+=	-DHAS_PGSQL -I${LOCALBASE}/include/postgresql
MAKE_AUXLIBS+=	-L${LOCALBASE}/lib -lpq
.endif

.if ${FLAVOR:L:Mdb4}
LIB_DEPENDS+=	databases/db/v4>=4,<5
WANTLIB+=	lib/db4/db>=4
MAKE_CCARGS+=	-I${LOCALBASE}/include/db4
MAKE_AUXLIBS+=	-L${LOCALBASE}/lib/db4 -ldb
.endif

.if ${FLAVOR:L:Msqlite}
LIB_DEPENDS+=	databases/sqlite3
WANTLIB+=	pthread sqlite3
MAKE_CCARGS+=	-DHAS_SQLITE -I${LOCALBASE}/include
MAKE_AUXLIBS+=	-L${LOCALBASE}/lib -lsqlite3 -pthread
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
