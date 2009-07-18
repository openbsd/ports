# $OpenBSD: Makefile.inc,v 1.70 2009/07/18 20:26:18 naddy Exp $

COMMENT=	fast, secure sendmail replacement

DISTNAME?=	postfix-${VERSION}
.if defined(PATCHLEVEL)
PKGNAME?=	postfix-${VERSION:S/-/./}p${PATCHLEVEL}
.else
PKGNAME?=	postfix-${VERSION:S/-/./}
.endif
CATEGORIES=	mail

MASTER_SITE_POSTFIX=\
		ftp://ftp.porcupine.org/mirrors/postfix-release/ \
		ftp://ftp.merit.edu/postfix/ \
		ftp://ftp.sunet.se/pub/unix/mail/postfix/ \
		ftp://ftp.tau.ac.il/pub/unix/mail/postfix/ \
		ftp://ftp.cs.uu.nl/mirror/postfix/postfix-release/

DIST_SUBDIR=	postfix
DISTFILES=	${DISTNAME}${EXTRACT_SUFX}

HOMEPAGE=	http://www.postfix.org/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	cannot be sold, see section 4 of license
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	cannot be sold, see section 4 of license
PERMIT_DISTFILES_FTP=	yes

MAKE_DEBUG?=
MAKE_CCARGS?=	-DFD_SETSIZE=2048
MAKE_CCARGS+=	-DDEF_CONFIG_DIR=\"${SYSCONFDIR}/postfix\"
MAKE_CCARGS+=	-DDEF_DATA_DIR=\"/var/postfix\"
MAKE_CCARGS+=	-DUSE_TLS
MAKE_AUXLIBS+=	-lssl -lcrypto

WANTLIB=	c crypto ssl

ALL_TARGET=	default

NO_REGRESS=	Yes

MAKE_CCARGS+=	-DUSE_SASL_AUTH

# always include pcre
LIB_DEPENDS+=	pcre::devel/pcre
MAKE_CCARGS+=	-DHAS_PCRE -I${LOCALBASE}/include
MAKE_AUXLIBS+=	-L${LOCALBASE}/lib -lpcre

FLAVORS+=	sasl2 ldap mysql pgsql db4
FLAVOR?=

.if ${FLAVOR:L:Msasl2}
LIB_DEPENDS+=	sasl2::security/cyrus-sasl2
MAKE_CCARGS+=	-I${LOCALBASE}/include -I${LOCALBASE}/include/sasl -DUSE_CYRUS_SASL
MAKE_AUXLIBS+=	-L${LOCALBASE}/lib -lsasl2
.endif

.if ${FLAVOR:L:Mldap}
LIB_DEPENDS+=	ldap.>=2,lber:openldap-client->=2,<3:databases/openldap
MAKE_CCARGS+=	-I${LOCALBASE}/include -DHAS_LDAP
MAKE_AUXLIBS+=	-L${LOCALBASE}/lib -lldap -llber
.endif

.if ${FLAVOR:L:Mmysql}
LIB_DEPENDS+=	lib/mysql/mysqlclient.>=10::databases/mysql
MAKE_CCARGS+=	-I${LOCALBASE}/include/mysql -DHAS_MYSQL
MAKE_AUXLIBS+=	-L${LOCALBASE}/lib/mysql -lmysqlclient
.endif

.if ${FLAVOR:L:Mpgsql}
LIB_DEPENDS+=	pq.>=3:postgresql-client-*:databases/postgresql
MAKE_CCARGS+=	-I${LOCALBASE}/include/postgresql -DHAS_PGSQL
MAKE_AUXLIBS+=	-L${LOCALBASE}/lib -lpq
.endif

.if ${FLAVOR:L:Mdb4}
LIB_DEPENDS+=	lib/db4/db.>=4:db->=4,<5:databases/db/v4
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
	@${INSTALL_SCRIPT} ${FILESDIR}/postfix-enable ${PREFIX}/sbin
	@${INSTALL_SCRIPT} ${FILESDIR}/postfix-disable ${PREFIX}/sbin
	@${INSTALL_SCRIPT} ${FILESDIR}/postfix-install ${PREFIX}/sbin
	@${INSTALL_SCRIPT} ${WRKSRC}/auxiliary/qshape/qshape.pl ${PREFIX}/sbin/qshape
	@${INSTALL_MAN} ${WRKSRC}/man/man1/qshape.1 ${PREFIX}/man/man1
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/postfix
	@mv ${WRKINST}${SYSCONFDIR}/postfix/* ${PREFIX}/share/examples/postfix
	@rm -fr ${WRKINST}/var/postfix
	@rm -fr ${WRKINST}/var/spool/postfix
	@chown -h ${BINOWN}:${BINGRP} ${PREFIX}/{sbin,libexec/postfix}/*
	@chown -R ${MANOWN}:${MANGRP} ${PREFIX}/man
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share
