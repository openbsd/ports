# $OpenBSD: Makefile.inc,v 1.23 2003/01/13 15:44:36 jakob Exp $

COMMENT=	fast, secure sendmail replacement

CATEGORIES=	mail

MASTER_SITE_POSTFIX=\
		ftp://ftp.porcupine.org/mirrors/postfix-release/ \
		ftp://ftp.merit.edu/postfix/ \
		ftp://ftp.sunet.se/pub/unix/mail/postfix/ \
		ftp://ftp.tau.ac.il/pub/unix/mail/postfix/ \
		ftp://ftp.cs.uu.nl/mirror/postfix/postfix-release/

DIST_SUBDIR=	postfix

HOMEPAGE=	http://www.postfix.org/

TLSHOMEPAGE=	http://www.aet.tu-cottbus.de/personen/jaenicke/pfixtls/
SUBST_VARS+=	TLSHOMEPAGE

PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

MAKE_DEBUG?=
MAKE_CCARGS?=	-DFD_SETSIZE=2048
MAKE_AUXLIBS?=

ALL_TARGET=	default

NO_REGRESS=	Yes

FLAVORS+=	pcre sasl sasl2 ldap mysql tls
FLAVOR?=

.if ${FLAVOR:L:Mpcre}
LIB_DEPENDS+=	pcre::devel/pcre
MAKE_CCARGS+=	-DHAS_PCRE -I${LOCALBASE}/include
MAKE_AUXLIBS+=	-L${LOCALBASE}/lib -lpcre
.else
MAKE_CCARGS+=	-DNO_PCRE
.endif

.if ${FLAVOR:L:Msasl}
LIB_DEPENDS+=	sasl::security/cyrus-sasl
MAKE_CCARGS+=	-I${LOCALBASE}/include -I${LOCALBASE}/include/sasl -DUSE_SASL_AUTH 
MAKE_AUXLIBS+=	-L${LOCALBASE}/lib -lsasl -lkrb
.endif

.if ${FLAVOR:L:Msasl2}
LIB_DEPENDS+=	sasl2::security/cyrus-sasl2
MAKE_CCARGS+=	-I${LOCALBASE}/include -I${LOCALBASE}/include/sasl -DUSE_SASL_AUTH 
MAKE_AUXLIBS+=	-L${LOCALBASE}/lib -lsasl2
.endif

.if ${FLAVOR:L:Mldap}
LIB_DEPENDS+=	ldap.2,lber:openldap-client-2.*:databases/openldap
MAKE_CCARGS+=	-I${LOCALBASE}/include -DHAS_LDAP
MAKE_AUXLIBS+=	-L${LOCALBASE}/lib -lldap -llber
.endif

.if ${FLAVOR:L:Mmysql}
LIB_DEPENDS+=	mysqlclient.10:mysql-client-3.23.*:databases/mysql
MAKE_CCARGS+=	-I${LOCALBASE}/include/mysql -DHAS_MYSQL
MAKE_AUXLIBS+=	-L${LOCALBASE}/lib/mysql -lmysqlclient
.endif

.if ${FLAVOR:L:Mtls}
.if defined(TLSVERSION)
PKGNAME:=	${PKGNAME}.tls${TLSVERSION}

MASTER_SITES0=	ftp://ftp.aet.tu-cottbus.de/pub/postfix_tls/ \
		ftp://ftp.aet.tu-cottbus.de/pub/postfix_tls/old/

DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		${TLSDISTNAME}${EXTRACT_SUFX}:0

MAKE_CCARGS+=	-DHAS_SSL
MAKE_AUXLIBS+=	-lssl -lcrypto

post-patch:
	mv ${WRKDIST}/conf/master.cf ${WRKDIST}/conf/master.cf.save
	cp ${WRKDIST}/conf/master.cf.orig ${WRKDIST}/conf/master.cf
	cd ${WRKDIST} && patch -p1 < ${WRKDIR}/${TLSDISTNAME}/pfixtls.diff
	mv ${WRKDIST}/conf/master.cf.save ${WRKDIST}/conf/master.cf
	cd ${WRKDIST} && patch -p0 < ${FILESDIR}/patch-tls-master.cf
	rm ${WRKDIST}/conf/*.orig

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/postfix/tls
	${INSTALL_DATA} ${WRKDIR}/${TLSDISTNAME}/doc/* \
		${PREFIX}/share/doc/postfix/tls
.else
BROKEN=         "TLS patches not yet availible for this version"
.endif
.else
post-patch:
	rm ${WRKDIST}/conf/*.orig
.endif

do-configure:
	cd ${WRKSRC}; ${MAKE_PROGRAM} makefiles \
		CC="${CC}" OPT="${CFLAGS}" DEBUG="${MAKE_DEBUG}" \
		CCARGS="${MAKE_CCARGS}" AUXLIBS="${MAKE_AUXLIBS}"

do-install:
	(cd ${WRKSRC}; sh postfix-install \
		-non-interactive \
		install_root=${WRKINST} \
		daemon_directory=${TRUEPREFIX}/libexec/postfix \
		command_directory=${TRUEPREFIX}/sbin \
		sendmail_path=${TRUEPREFIX}/sbin/sendmail \
		newalises_path=${TRUEPREFIX}/sbin/newaliases \
		mailq_path=${TRUEPREFIX}/sbin/mailq \
		mail_owner=postfix \
		setgid_group=postdrop \
		manpage_directory=${TRUEPREFIX}/man \
		readme_directory=${TRUEPREFIX}/share/doc/postfix/readme \
		)
	${INSTALL_SCRIPT} ${FILESDIR}/postfix-enable ${PREFIX}/sbin
	${INSTALL_SCRIPT} ${FILESDIR}/postfix-disable ${PREFIX}/sbin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/postfix
	mv ${WRKINST}/etc/postfix/* ${PREFIX}/share/examples/postfix
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/postfix/html
	${INSTALL_DATA} ${WRKSRC}/html/*.html ${PREFIX}/share/doc/postfix/html
	${INSTALL_DATA} ${WRKSRC}/html/*.gif ${PREFIX}/share/doc/postfix/html
	rm -fr ${WRKINST}/var/spool/postfix
