# $OpenBSD: Makefile.inc,v 1.8 2001/09/28 23:35:18 jakob Exp $

COMMENT=	fast, secure sendmail replacement

CATEGORIES=	mail
NEED_VERSION=	1.363

MASTER_SITES=	ftp://ftp.merit.edu/postfix/%SUBDIR%/ \
		ftp://ftp.sunet.se/pub/unix/mail/postfix/%SUBDIR%/ \
		ftp://ftp.tau.ac.il/pub/unix/mail/postfix/%SUBDIR%/ \
		ftp://ftp.cs.uu.nl/mirror/postfix/postfix-release/%SUBDIR%/

DIST_SUBDIR=	postfix

HOMEPAGE=	http://www.postfix.org/

PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

MAKE_DEBUG?=
MAKE_CCARGS?=
MAKE_AUXLIBS?=

ALL_TARGET=	default

FLAVORS=	pcre sasl ldap mysql
FLAVOR?=

.if ${FLAVOR:L:Mpcre}
LIB_DEPENDS+=	pcre::devel/pcre
MAKE_CCARGS+=	-I${LOCALBASE}/include -DHAS_PCRE
MAKE_AUXLIBS+=	-L${LOCALBASE}/lib -lpcre
.endif

.if ${FLAVOR:L:Msasl}
LIB_DEPENDS+=	sasl::security/cyrus-sasl
MAKE_CCARGS+=	-I${LOCALBASE}/include -I${LOCALBASE}/include/sasl -DUSE_SASL_AUTH 
MAKE_AUXLIBS+=	-L${LOCALBASE}/lib -lsasl -lkrb
.endif

.if ${FLAVOR:L:Mldap}
LIB_DEPENDS+=	ldap.2:openldap-client-2.*:databases/openldap
MAKE_CCARGS+=	-I${LOCALBASE}/include -DHAS_LDAP
MAKE_AUXLIBS+=	-L${LOCALBASE}/lib -lldap -llber
.endif

.if ${FLAVOR:L:Mmysql}
LIB_DEPENDS+=	mysqlclient.10:mysql-client-3.23.*:databases/mysql
MAKE_CCARGS+=	-I${LOCALBASE}/include/mysql -DHAS_MYSQL
MAKE_AUXLIBS+=	-L${LOCALBASE}/lib/mysql -lmysqlclient
.endif

do-configure:
	cd ${WRKSRC}; ${MAKE_PROGRAM} makefiles \
		CC="${CC}" OPT="${CFLAGS}" DEBUG="${MAKE_DEBUG}" \
		CCARGS="${MAKE_CCARGS}" AUXLIBS="${MAKE_AUXLIBS}"

do-install:
	${INSTALL_PROGRAM_DIR} ${PREFIX}/libexec/postfix
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/postfix
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/postfix
	${INSTALL_PROGRAM} ${WRKSRC}/bin/* ${PREFIX}/sbin
	${INSTALL_SCRIPT} ${FILESDIR}/postfix-enable ${PREFIX}/sbin
	${INSTALL_SCRIPT} ${FILESDIR}/postfix-disable ${PREFIX}/sbin
	${INSTALL_PROGRAM} ${WRKSRC}/libexec/* ${PREFIX}/libexec/postfix
	${INSTALL_DATA} ${WRKSRC}/conf/* ${PREFIX}/share/examples/postfix
	@(cd ${WRKSRC}/man; \
	  for mandir in man[0-9]; do \
	     ${INSTALL_MAN} $$mandir/* ${PREFIX}/man/$$mandir; \
	  done)
	${INSTALL_DATA} ${WRKSRC}/html/*.html ${PREFIX}/share/doc/postfix
	${INSTALL_DATA} ${WRKSRC}/html/*.gif ${PREFIX}/share/doc/postfix
