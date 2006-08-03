# $OpenBSD: Makefile,v 1.17 2006/08/03 13:09:09 espie Exp $

COMMENT=	"anti-spam filter"

VERSION=	3.6.8
DISTNAME=	dspam-${VERSION}
PKGNAME=	${DISTNAME}p0
SHARED_LIBS=	dspam	7.0
CATEGORIES=	mail

MASTER_SITES=	http://dspam.nuclearelephant.com/sources/

HOMEPAGE=	http://dspam.nuclearelephant.com/

MAINTAINER=     Todd T. Fries <todd@OpenBSD.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m

CONFIGURE_STYLE=	gnu
SEPARATE_BUILD=		concurrent

USE_LIBTOOL=		Yes

CONFIGURE_ARGS+=	--with-dspam-home=/var/dspam \
			--with-dspam-home-owner=_dspam \
			--with-dspam-home-group=_dspam \
			--with-dspam-home-mode=0755 \
			--with-dspam-owner=root \
			--with-dspam-group=bin \
			--with-dspam-mode=0555 \
			--enable-long-usernames

DOCS=		${WRKSRC}/README ${WRKSRC}/UPGRADING ${WRKSRC}/RELEASE.NOTES \
		${WRKSRC}/doc/courier.txt ${WRKSRC}/doc/exim.txt \
		${WRKSRC}/doc/markov.txt ${WRKSRC}/doc/pop3filter.txt \
		${WRKSRC}/doc/postfix.txt ${WRKSRC}/doc/qmail.txt \
		${WRKSRC}/doc/relay.txt ${WRKSRC}/doc/sendmail.txt

EXAMPLESDIR=	${PREFIX}/share/examples/dspam
DRIVER=
DAEMON_SUPPORT=

FLAVORS=	sqlite3 sqlite mysql pgsql hash clamav ldap preferences
FLAVOR?=	sqlite3

.if ${FLAVOR:L:Mmysql}
.if !empty(DRIVER)
BROKEN=			choose either mysql or pgsql or sqlite or sqlite3 or hash
.endif
CONFIGURE_ARGS+=	--with-storage-driver=mysql_drv \
			--with-mysql-includes=${LOCALBASE}/include/mysql \
			--with-mysql-libraries=${LOCALBASE}/lib/mysql \
			--enable-virtual-users
LIB_DEPENDS+=		lib/mysql/mysqlclient.14::databases/mysql
DRIVER=			mysql
WANTLIB+=		z ssl crypto
.endif

.if ${FLAVOR:L:Mpgsql}
.if !empty(DRIVER)
BROKEN=			choose either mysql or pgsql or sqlite or sqlite3 or hash
.endif
CONFIGURE_ARGS+=	--with-storage-driver=pgsql_drv \
			--with-pgsql-includes=${LOCALBASE}/include/postgresql \
			--with-pgsql-libraries=${LOCALBASE}/lib \
			--enable-virtual-users
LIB_DEPENDS+=		pq.>=4:postgresql-client-*:databases/postgresql
DRIVER=			pgsql
.endif

.if ${FLAVOR:L:Mhash}
.if !empty(DRIVER)
BROKEN=			choose either mysql or pgsql or sqlite or sqlite3 or hash
.endif
CONFIGURE_ARGS+=	--with-storage-driver=hash_drv
DRIVER=			hash
.endif

.if ${FLAVOR:L:Msqlite}
.if !empty(DRIVER)
BROKEN=			choose either mysql or pgsql or sqlite or sqlite3 or hash
.endif
CONFIGURE_ARGS+=	--with-storage-driver=sqlite_drv \
			--with-sqlite-includes=${LOCALBASE}/include \
			--with-sqlite-libraries=${LOCALBASE}/lib
LIB_DEPENDS+=		sqlite.>=8::databases/sqlite
DRIVER=			sqlite
.endif

.if ${FLAVOR:L:Msqlite3} || empty(DRIVER)
.if !empty(DRIVER)
BROKEN=			choose either mysql or pgsql or sqlite or sqlite3 or hash
.else
FLAVOR+=		sqlite3
.endif
CONFIGURE_ARGS+=	--with-storage-driver=sqlite3_drv \
			--with-sqlite-includes=${LOCALBASE}/include \
			--with-sqlite-libraries=${LOCALBASE}/lib
LIB_DEPENDS+=		sqlite3.>=8::databases/sqlite3
DRIVER=			sqlite
.endif

.if empty(FLAVOR:L:Msqlite3) && empty(FLAVOR:L:Msqlite)
DAEMON_SUPPORT=		Yes
.endif

.if ${FLAVOR:L:Mclamav}
CONFIGURE_ARGS+=	--enable-clamav
LIB_DEPENDS+=		clamav.>=1::security/clamav
.endif

.if ${FLAVOR:L:Mldap}
CONFIGURE_ARGS+=	--enable-ldap
CONFIGURE_ENV=		CPPFLAGS="-I${DEPBASE}/include" \
			LDFLAGS="-L${DEPBASE}/lib"
LIB_DEPENDS+=		ldap.>=8,lber.>=8::databases/openldap
WANTLIB+=		crypto ssl sasl2
.endif

.if !empty(DAEMON_SUPPORT)
CONFIGURE_ARGS+=	--enable-daemon
WANTLIB+=		pthread
.endif

.if ${FLAVOR:L:Mpreferences}
CONFIGURE_ARGS+=	--enable-preferences-extension
.endif

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKBUILD}/src/dspam.conf \
		${PREFIX}/share/examples/dspam/dspam.conf
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dspam
	${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/dspam
.if ${DRIVER} != "hash"
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}/${DRIVER}
	${INSTALL_DATA} ${WRKSRC}/src/tools.${DRIVER}_drv/*.sql \
		${EXAMPLESDIR}/${DRIVER}
	${INSTALL_DATA} ${WRKSRC}/doc/${DRIVER}_drv.txt \
		${PREFIX}/share/doc/dspam
.endif

.include <bsd.port.mk>
