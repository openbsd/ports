COMMENT=	fast, secure sendmail replacement

DISTNAME=	postfix-${VERSION}
PKGNAME=	postfix-${VERSION:S/-/./}
CATEGORIES=	mail

SITE_POSTFIX= \
		https://archive.mgm51.com/mirrors/postfix-source/ \
		https://de.postfix.org/ftpmirror/ \
		https://postfix-mirror.horus-it.com/postfix-release/ \
		ftp://ftp.porcupine.org/mirrors/postfix-release/

DIST_SUBDIR=	postfix

HOMEPAGE=	https://www.postfix.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# IBM Public License 1.0 / Eclipse Public License 2.0
PERMIT_PACKAGE=	Yes

MAKE_DEBUG?=
MAKE_CCARGS+=	-I. -I../../include
MAKE_CCARGS+=	-DDEF_CONFIG_DIR=\"${SYSCONFDIR}/postfix\"
MAKE_CCARGS+=	-DDEF_DATA_DIR=\"/var/postfix\"
MAKE_CCARGS+=	-DHAS_SQLITE
MAKE_CCARGS+=	-DUSE_TLS
MAKE_CCARGS+=	-DUSE_SASL_AUTH
# no UTF-8 support for now
MAKE_CCARGS+=	-DNO_EAI
MAKE_AUXLIBS+=	-lsqlite3 -pthread

WANTLIB+=	c pthread sqlite3

LIB_DEPENDS+=	databases/sqlite3

.if ${VERSION:M3.5*}
WANTLIB+=	pcre
LIB_DEPENDS+=	devel/pcre
.else
WANTLIB+=	pcre2-8
LIB_DEPENDS+=	devel/pcre2
.endif

ALL_TARGET=	default

NO_TEST=	Yes

FLAVORS+=	sasl2 ldap mysql pgsql
FLAVOR?=

# TLS support in Postfix 3.6+ requires OpenSSL 1.1.1+ and does require
# APIs which are not available in LibreSSL. It is linked statically
# to avoid conflicting with shared libssl/libcrypto from the base OS
# pulled in via dependencies (for ldap/mysql/pgsql).
#
# Kept behind a variable to simplify building against libressl for
# development work.
NEEDS_OPENSSL?=	No

.if ${FLAVOR:Msasl2}
LIB_DEPENDS+=	security/cyrus-sasl2
WANTLIB+=	sasl2
MAKE_CCARGS+=	-DUSE_CYRUS_SASL -I${LOCALBASE}/include -I${LOCALBASE}/include/sasl
MAKE_AUXLIBS+=	-L${LOCALBASE}/lib -lsasl2
.endif

.if ${NEEDS_OPENSSL:L:Myes}
. if ${MACHINE_ARCH} != aarch64 && ${MACHINE_ARCH} != amd64 && ${MACHINE_ARCH} != riscv64
USE_NOEXECONLY=	Yes
. endif
BUILD_DEPENDS+=	security/openssl/3.2
MAKE_CCARGS+=	-I${LOCALBASE}/include/eopenssl32
MAKE_AUXLIBS+=	${LOCALBASE}/lib/eopenssl32/libssl.a \
		${LOCALBASE}/lib/eopenssl32/libcrypto.a
.else
MAKE_AUXLIBS+=	-lssl -lcrypto
WANTLIB+=	crypto ssl
.endif

.if ${FLAVOR:Mldap}
LIB_DEPENDS+=	databases/openldap
WANTLIB+=	ldap>=2 lber
MAKE_CCARGS+=	-DHAS_LDAP -I${LOCALBASE}/include
MAKE_AUXLIBS+=	-L${LOCALBASE}/lib -lldap -llber
.endif

.if ${FLAVOR:Mmysql}
LIB_DEPENDS+=	databases/mariadb
WANTLIB+=	lib/mysql/mariadb
MAKE_CCARGS+=	-DHAS_MYSQL -I${LOCALBASE}/include/mysql
MAKE_AUXLIBS+=	-L${LOCALBASE}/lib/mysql -lmariadb
.endif

.if ${FLAVOR:Mpgsql}
LIB_DEPENDS+=	databases/postgresql
WANTLIB+=	pq>=3
MAKE_CCARGS+=	-DHAS_PGSQL -I${LOCALBASE}/include/postgresql
MAKE_AUXLIBS+=	-L${LOCALBASE}/lib -lpq
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
	${INSTALL_PROGRAM} ${WRKSRC}/bin/posttls-finger ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/man/man1/{qshape,posttls-finger}.1 ${PREFIX}/man/man1
	@mv ${WRKINST}${SYSCONFDIR}/postfix/* ${PREFIX}/share/examples/postfix
	@rm -fr ${WRKINST}/var/postfix
	@rm -fr ${WRKINST}/var/spool/postfix
	@chown -h ${BINOWN}:${BINGRP} ${PREFIX}/{sbin,libexec/postfix}/*
	@chown -R ${MANOWN}:${MANGRP} ${PREFIX}/man
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share
