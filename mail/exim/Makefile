# $OpenBSD: Makefile,v 1.67 2009/08/10 06:32:42 kili Exp $

COMMENT=	Flexible mail transfer agent
DISTNAME=	exim-4.69
PKGNAME=	${DISTNAME}p2
CATEGORIES=	mail
MASTER_SITES=	ftp://ftp.exim.org/pub/exim/exim4/ \
		http://mirror.switch.ch/ftp/mirror/exim/exim/exim4/ \
		ftp://mirror.switch.ch/mirror/exim/exim/exim4/

HOMEPAGE=	http://www.exim.org/

MAINTAINER=	Felix Kronlage <fkr@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		c crypto perl ssl util wrap m

FLAVORS=no_exiscan no_x11 mysql postgresql sqlite3 ldap iconv sasl
FLAVOR?=

NO_REGRESS=Yes

.if !${FLAVOR:L:Mno_exiscan}
EXIM_MAKECAT+=		"WITH_CONTENT_SCAN=yes\n"
EXIM_MAKECAT+=		"WITH_OLD_DEMIME=yes\n"
.endif

.if !${FLAVOR:L:Mno_x11}
USE_X11=		Yes
EXIM_MAKECAT+=		"EXIM_MONITOR=eximon.bin\n"
WANTLIB+=		X11 Xaw Xext Xmu Xt pthread-stubs xcb
.endif

.if ${FLAVOR:L:Mmysql}
EXIM_MAKECAT+=		"LOOKUP_MYSQL=yes\n"
EXIM_LOOKUP_INCLUDE+=	-I${LOCALBASE}/include/mysql
EXIM_LOOKUP_LIBS+=	-L${LOCALBASE}/lib/mysql -lmysqlclient
LIB_DEPENDS+=		lib/mysql/mysqlclient.>=10:mysql-client-*:databases/mysql
.endif

.if ${FLAVOR:L:Mpostgresql}
EXIM_MAKECAT+=		"LOOKUP_PGSQL=yes\n"
EXIM_LOOKUP_INCLUDE+=	-I${LOCALBASE}/include/postgresql
EXIM_LOOKUP_LIBS+=	-L${LOCALBASE}/lib/ -lpq
LIB_DEPENDS+=		pq.>=2:postgresql-client-*:databases/postgresql
.endif

.if ${FLAVOR:L:Msqlite3}
EXIM_MAKECAT+=		"LOOKUP_SQLITE=yes\n"
EXIM_LOOKUP_INCLUDE+=	-I${LOCALBASE}/include
EXIM_LOOKUP_LIBS+=	-L${LOCALBASE}/lib/ -lsqlite3
LIB_DEPENDS+=		sqlite3.>=8::databases/sqlite3
.endif

.if ${FLAVOR:L:Mldap}
EXIM_MAKECAT+=		"LOOKUP_LDAP=yes\n"
EXIM_MAKECAT+=		"LDAP_LIB_TYPE=OPENLDAP2\n"
EXIM_LOOKUP_INCLUDE+=	-I${LOCALBASE}/include
EXIM_LOOKUP_LIBS+=	-L${LOCALBASE}/lib -lldap -llber
LIB_DEPENDS+=		ldap.>=2,lber:openldap-client->=2,<3:databases/openldap
.endif

.if ${FLAVOR:L:Miconv}
MODULES=		converters/libiconv
EXIM_MAKECAT+=		"HAVE_ICONV=yes\n"
EXIM_EXTRA_LIBS+=	-L${LOCALBASE}/lib -liconv
EXIM_CFLAGS+=		-I${LOCALBASE}/include
.endif

.if ${FLAVOR:L:Msasl}
EXIM_MAKECAT+=		"AUTH_CYRUS_SASL=yes\n"
EXIM_EXTRA_LIBS+=	-L${LOCALBASE}/lib -lsasl2
EXIM_CFLAGS+=		-I${LOCALBASE}/include
LIB_DEPENDS+=		sasl2::security/cyrus-sasl2
.endif

EXIM_EXTRA_LIBS+=	-lwrap

EXIM_MAKECAT+=		"AUTH_DOVECOT=yes\n"
EXIM_MAKECAT+=		"BIN_DIRECTORY=${PREFIX}/bin\n"
EXIM_MAKECAT+=		"CONFIGURE_FILE=${SYSCONFDIR}/exim/configure\n"
EXIM_MAKECAT+=		"LOOKUP_INCLUDE=${EXIM_LOOKUP_INCLUDE}\n"
EXIM_MAKECAT+=		"LOOKUP_LIBS=${EXIM_LOOKUP_LIBS}\n"
EXIM_MAKECAT+=		"EXTRALIBS_EXIM=${EXIM_EXTRA_LIBS}\n"
EXIM_MAKECAT+=		"CFLAGS=${CFLAGS} ${EXIM_CFLAGS}\n"

do-configure:
	@mkdir -p ${WRKSRC}/Local
	@cp ${FILESDIR}/Makefile ${WRKSRC}/Local
	@echo -n ${EXIM_MAKECAT} >> ${WRKSRC}/Local/Makefile
.if !${FLAVOR:L:Mno_x11}
	@cp ${FILESDIR}/eximon.conf ${WRKSRC}/Local
.endif

pre-fake:
	${INSTALL_DATA_DIR} ${WRKINST}${SYSCONFDIR}/mail

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/exim
	${INSTALL_DATA} ${WRKINST}${SYSCONFDIR}/exim/configure ${PREFIX}/share/examples/exim
	${INSTALL_DATA} ${WRKSRC}/build-`uname -s`-`uname -m`/convert4r4 ${PREFIX}/share/examples/exim
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/exim
	${INSTALL_DATA} ${WRKSRC}/doc/spec.txt ${PREFIX}/share/doc/exim
	${INSTALL_DATA} ${WRKSRC}/doc/README.SIEVE ${PREFIX}/share/doc/exim
	${INSTALL_DATA} ${WRKSRC}/doc/filter.txt ${PREFIX}/share/doc/exim
	${INSTALL_MAN} ${WRKSRC}/doc/exim.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
