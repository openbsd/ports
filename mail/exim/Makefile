# $OpenBSD: Makefile,v 1.72 2010/02/02 20:23:30 sthen Exp $

CATEGORIES =		mail
COMMENT-main =		flexible mail transfer agent
COMMENT-eximon =	X11 monitor tool for Exim MTA
VERSION =		4.71
DISTNAME =		exim-${VERSION}
PKGNAME-main =		exim-${VERSION}p0
FULLPKGNAME-eximon =	exim-eximon-${VERSION}p1
FULLPKGPATH-eximon =	${PKGPATH},-eximon
MASTER_SITES =		ftp://ftp.exim.org/pub/exim/exim4/ \
			http://mirror.switch.ch/ftp/mirror/exim/exim/exim4/ \
			ftp://mirror.switch.ch/mirror/exim/exim/exim4/

HOMEPAGE =		http://www.exim.org/

MAINTAINER =		Felix Kronlage <fkr@openbsd.org>

# GPLv2+, with OpenSSL exemption
PERMIT_PACKAGE_CDROM =   Yes
PERMIT_PACKAGE_FTP =     Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =   Yes

PSEUDO_FLAVORS =	no_eximon
FLAVORS =		mysql postgresql sqlite3 ldap sasl
FLAVOR ?=
MULTI_PACKAGES =	-main

MODULES =		converters/libiconv
LIB_DEPENDS-main =	${LIB_DEPENDS} pcre::devel/pcre
WANTLIB =		c m
WANTLIB-main =		${WANTLIB} crypto perl ssl util wrap
WANTLIB-eximon =		${WANTLIB} X11 Xaw Xext Xmu Xt
RUN_DEPENDS-eximon =	::${PKGPATH},-main
LIB_DEPENDS-eximon =	pcre::devel/pcre

NO_REGRESS =		Yes

.if !${FLAVOR:L:Mno_eximon}
USE_X11 =		Yes
MULTI_PACKAGES +=	-eximon
EXIM_MAKECAT +=		"EXIM_MONITOR=eximon.bin\n"
.endif

.if ${FLAVOR:L:Mmysql}
EXIM_MAKECAT +=		"LOOKUP_MYSQL=yes\n"
EXIM_LOOKUP_INCLUDE +=	-I${LOCALBASE}/include/mysql
EXIM_LOOKUP_LIBS +=	-L${LOCALBASE}/lib/mysql -lmysqlclient
LIB_DEPENDS-main +=	lib/mysql/mysqlclient.>=10:mysql-client-*:databases/mysql
.endif

.if ${FLAVOR:L:Mpostgresql}
EXIM_MAKECAT +=		"LOOKUP_PGSQL=yes\n"
EXIM_LOOKUP_INCLUDE +=	-I${LOCALBASE}/include/postgresql
EXIM_LOOKUP_LIBS +=	-L${LOCALBASE}/lib/ -lpq
LIB_DEPENDS-main +=	pq.>=2:postgresql-client-*:databases/postgresql
.endif

.if ${FLAVOR:L:Msqlite3}
EXIM_MAKECAT +=		"LOOKUP_SQLITE=yes\n"
EXIM_LOOKUP_LIBS +=	-L${LOCALBASE}/lib/ -lsqlite3
LIB_DEPENDS-main +=	sqlite3.>=8::databases/sqlite3
.endif

.if ${FLAVOR:L:Mldap}
EXIM_MAKECAT +=		"LOOKUP_LDAP=yes\n"
EXIM_MAKECAT +=		"LDAP_LIB_TYPE=OPENLDAP2\n"
EXIM_LOOKUP_LIBS +=	-L${LOCALBASE}/lib -lldap -llber
LIB_DEPENDS-main +=	ldap.>=9,lber:openldap-client->=2.3:databases/openldap
.endif

.if ${FLAVOR:L:Msasl}
EXIM_MAKECAT +=		"AUTH_CYRUS_SASL=yes\n"
EXIM_EXTRA_LIBS +=	-L${LOCALBASE}/lib -lsasl2
LIB_DEPENDS-main +=	sasl2::security/cyrus-sasl2
.endif

EXIM_EXTRA_LIBS +=	-lwrap -L${LOCALBASE}/lib -liconv

EXIM_MAKECAT +=		"BIN_DIRECTORY=${PREFIX}/bin\n"
EXIM_MAKECAT +=		"CONFIGURE_FILE=${SYSCONFDIR}/exim/configure\n"
EXIM_MAKECAT +=		"LOOKUP_INCLUDE=${EXIM_LOOKUP_INCLUDE}\n"
EXIM_MAKECAT +=		"LOOKUP_LIBS=${EXIM_LOOKUP_LIBS}\n"
EXIM_MAKECAT +=		"EXTRALIBS_EXIM=${EXIM_EXTRA_LIBS}\n"
EXIM_MAKECAT +=		"CFLAGS=${CFLAGS} ${EXIM_CFLAGS}\n"
EXIM_MAKECAT +=		"INCLUDE=-I${LOCALBASE}/include\n"

MAKE_FLAGS +=		FULLECHO=

do-configure:
	@mkdir -p ${WRKSRC}/Local
	@cp ${FILESDIR}/Makefile ${WRKSRC}/Local
	@echo -n ${EXIM_MAKECAT} >> ${WRKSRC}/Local/Makefile
	@cp ${FILESDIR}/eximon.conf ${WRKSRC}/Local

pre-fake:
	${INSTALL_DATA_DIR} ${WRKINST}${SYSCONFDIR}/mail

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/exim
	${INSTALL_DATA} ${WRKINST}${SYSCONFDIR}/exim/configure ${PREFIX}/share/examples/exim
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/exim
	${INSTALL_DATA} ${WRKSRC}/doc/spec.txt ${PREFIX}/share/doc/exim
	${INSTALL_DATA} ${WRKSRC}/doc/README.SIEVE ${PREFIX}/share/doc/exim
	${INSTALL_DATA} ${WRKSRC}/doc/filter.txt ${PREFIX}/share/doc/exim
	${INSTALL_MAN} ${WRKSRC}/doc/exim.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
