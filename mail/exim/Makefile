# $OpenBSD: Makefile,v 1.126 2019/09/29 18:08:55 sthen Exp $

COMMENT-main =		flexible mail transfer agent
COMMENT-eximon =	X11 monitor tool for Exim MTA

VERSION =		4.92.3
DISTNAME =		exim-${VERSION}
PKGNAME-main =		exim-${VERSION}
FULLPKGNAME-eximon =	exim-eximon-${VERSION}
FULLPKGPATH-eximon =	${PKGPATH},-eximon

CATEGORIES =		mail

HOMEPAGE =		https://www.exim.org/

MAINTAINER =		Renaud Allard <renaud@allard.it>

# GPLv2+, with OpenSSL exemption
PERMIT_PACKAGE =	Yes

cWANTLIB =		c m
WANTLIB-main =		${cWANTLIB} crypto iconv perl pcre spf2 ssl
WANTLIB-eximon =	${cWANTLIB} X11 Xaw Xext Xmu Xt pcre

MASTER_SITES =		https://ftp.exim.org/pub/exim/exim4/ \
			https://ftp.exim.org/pub/exim/exim4/old/ \
			ftp://ftp.exim.org/pub/exim/exim4/ \
			http://mirror.switch.ch/ftp/mirror/exim/exim/exim4/

LIB_DEPENDS-main =	converters/libiconv \
			devel/pcre \
			mail/libspf2
RUN_DEPENDS-eximon =	${PKGPATH},-main
LIB_DEPENDS-eximon =	devel/pcre

MAKE_FLAGS +=		FULLECHO=

PSEUDO_FLAVORS =	no_eximon
FLAVORS =		mysql postgresql sqlite3 ldap sasl
FLAVOR ?=
MULTI_PACKAGES =	-main -eximon

.include <bsd.port.arch.mk>

.if ${BUILD_PACKAGES:M-eximon}
EXIM_MAKECAT +=		"EXIM_MONITOR=eximon.bin\n"
.endif

.if ${FLAVOR:Mmysql}
EXIM_MAKECAT +=		"LOOKUP_MYSQL=yes\n"
EXIM_LOOKUP_INCLUDE +=	-I${LOCALBASE}/include/mysql
EXIM_LOOKUP_LIBS +=	-L${LOCALBASE}/lib/mysql -lmysqlclient
LIB_DEPENDS-main +=	databases/mariadb
WANTLIB-main +=		lib/mysql/mysqlclient pthread
.endif

.if ${FLAVOR:Mpostgresql}
EXIM_MAKECAT +=		"LOOKUP_PGSQL=yes\n"
EXIM_LOOKUP_INCLUDE +=	-I${LOCALBASE}/include/postgresql
EXIM_LOOKUP_LIBS +=	-L${LOCALBASE}/lib/ -lpq
LIB_DEPENDS-main +=	databases/postgresql
WANTLIB-main +=		pq>=2
.endif

.if ${FLAVOR:Msqlite3}
EXIM_MAKECAT +=		"LOOKUP_SQLITE=yes\n"
EXIM_LOOKUP_LIBS +=	-lsqlite3
WANTLIB-main +=		sqlite3>=8
.endif

.if ${FLAVOR:Mldap}
EXIM_MAKECAT +=		"LOOKUP_LDAP=yes\n"
EXIM_MAKECAT +=		"LDAP_LIB_TYPE=OPENLDAP2\n"
EXIM_LOOKUP_LIBS +=	-L${LOCALBASE}/lib -lldap -llber
LIB_DEPENDS-main +=	databases/openldap>=2.3
WANTLIB-main +=		ldap>=9 lber
.endif

.if ${FLAVOR:Msasl}
EXIM_MAKECAT +=		"AUTH_CYRUS_SASL=yes\n"
EXIM_EXTRA_LIBS +=	-L${LOCALBASE}/lib -lsasl2
LIB_DEPENDS-main +=	security/cyrus-sasl2
WANTLIB-main +=		sasl2
.endif

EXIM_EXTRA_LIBS +=	-L${LOCALBASE}/lib -liconv

EXIM_MAKECAT +=		"BIN_DIRECTORY=${PREFIX}/bin\n"
EXIM_MAKECAT +=		"CONFIGURE_FILE=${SYSCONFDIR}/exim/configure\n"
EXIM_MAKECAT +=		"LOOKUP_INCLUDE=${EXIM_LOOKUP_INCLUDE}\n"
EXIM_MAKECAT +=		"LOOKUP_LIBS=${EXIM_LOOKUP_LIBS}\n"
EXIM_MAKECAT +=		"EXTRALIBS_EXIM=${EXIM_EXTRA_LIBS}\n"
EXIM_MAKECAT +=		"CFLAGS=${CFLAGS} ${EXIM_CFLAGS}\n"
EXIM_MAKECAT +=		"INCLUDE=-I${LOCALBASE}/include\n"

NO_TEST =		Yes

post-extract:
	@cd ${WRKSRC}; cp src/EDITME Local/Makefile; \
	    cp exim_monitor/EDITME Local/eximon.conf

do-configure:
	@echo -n ${EXIM_MAKECAT} >> ${WRKSRC}/Local/Makefile

pre-fake:
	${INSTALL_DATA_DIR} ${WRKINST}${SYSCONFDIR}/mail

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/exim
	${INSTALL_DATA} ${WRKINST}${SYSCONFDIR}/exim/configure \
	    ${PREFIX}/share/examples/exim
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/exim
	${INSTALL_DATA} ${WRKSRC}/doc/spec.txt ${PREFIX}/share/doc/exim
	${INSTALL_DATA} ${WRKSRC}/doc/README.SIEVE ${PREFIX}/share/doc/exim
	${INSTALL_DATA} ${WRKSRC}/doc/filter.txt ${PREFIX}/share/doc/exim
	${SUBST_DATA} ${FILESDIR}/mailer.conf.exim \
	    ${PREFIX}/share/doc/exim/mailer.conf.exim
	${INSTALL_SCRIPT} ${FILESDIR}/exim-enable ${FILESDIR}/exim-disable \
	    ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/doc/exim.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
