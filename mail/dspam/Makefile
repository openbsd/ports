# $OpenBSD: Makefile,v 1.45 2013/06/20 06:54:36 ajacoutot Exp $

COMMENT=	anti-spam filter

VERSION=	3.8.0
DISTNAME=	dspam-${VERSION}
REVISION=	8
SHARED_LIBS=	dspam	8.0
CATEGORIES=	mail

MASTER_SITES=	http://dspam.nuclearelephant.com/sources/

HOMEPAGE=	http://dspam.nuclearelephant.com/

MAINTAINER=     Todd T. Fries <todd@OpenBSD.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m

USE_GROFF =		Yes
CONFIGURE_STYLE=	gnu
SEPARATE_BUILD=		Yes
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
DAEMON_SUPPORT=

FLAVORS=	sqlite3 sqlite mysql pgsql hash clamav ldap preferences \
		domainscale largescale
FLAVOR?=	sqlite3

. if ${FLAVOR:Mlargescale} && ${FLAVOR:Mdomainscale}
ERRORS+= "Fatal: choose either domainscale or largescale, not both"
. endif

.for d in sqlite3 sqlite mysql pgsql hash
.  if ${FLAVOR:M$d}
DRIVER ?= $d
.    if ${DRIVER} != "$d"
ERRORS += "Fatal: choose either mysql or pgsql or sqlite or sqlite3 or hash"
.    endif
.  endif
.endfor

.if !defined(DRIVER)
DRIVER = sqlite3
FLAVOR += sqlite3
.endif

.if ${DRIVER} == "mysql"
CONFIGURE_ARGS+=	--with-storage-driver=mysql_drv \
			--with-mysql-includes=${LOCALBASE}/include/mysql \
			--with-mysql-libraries=${LOCALBASE}/lib/mysql \
			--enable-virtual-users
LIB_DEPENDS+=		databases/mysql
WANTLIB+=		z ssl crypto lib/mysql/mysqlclient>=14
.elif ${DRIVER} == "pgsql"
CONFIGURE_ARGS+=	--with-storage-driver=pgsql_drv \
			--with-pgsql-includes=${LOCALBASE}/include/postgresql \
			--with-pgsql-libraries=${LOCALBASE}/lib \
			--enable-virtual-users
LIB_DEPENDS+=		databases/postgresql
WANTLIB +=		pq>=4 com_err crypto ssl
.elif ${DRIVER} == "hash"
CONFIGURE_ARGS+=	--with-storage-driver=hash_drv
.elif ${DRIVER} == "sqlite"
CONFIGURE_ARGS+=	--with-storage-driver=sqlite_drv \
			--with-sqlite-includes=${LOCALBASE}/include \
			--with-sqlite-libraries=${LOCALBASE}/lib
LIB_DEPENDS+=		databases/sqlite
WANTLIB +=		sqlite>=8
.elif ${DRIVER} == "sqlite3"
CONFIGURE_ARGS+=	--with-storage-driver=sqlite3_drv \
			--with-sqlite-includes=${LOCALBASE}/include \
			--with-sqlite-libraries=${LOCALBASE}/lib
WANTLIB +=		sqlite3>=8
DRIVER =		sqlite
.endif

.if ${DRIVER} != "sqlite"
DAEMON_SUPPORT=		Yes
CONFIGURE_ARGS+=	--enable-daemon
WANTLIB+=		pthread
.endif

.if ${FLAVOR:Mclamav}
CONFIGURE_ARGS+=	--enable-clamav
LIB_DEPENDS+=		security/clamav
WANTLIB +=		clamav>=1
.endif

.if ${FLAVOR:Mldap}
CONFIGURE_ARGS+=	--enable-ldap
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
LIB_DEPENDS+=		databases/openldap
WANTLIB+=		crypto ssl sasl2 asn1 com_err gssapi krb5 \
			ldap-2.4 lber-2.4 heimbase \
			pthread roken wind
.endif

.if ${FLAVOR:Mpreferences}
CONFIGURE_ARGS+=	--enable-preferences-extension
.endif

.if ${FLAVOR:Mdomainscale}
CONFIGURE_ARGS+=	--enable-domain-scale
.else
CONFIGURE_ARGS+=	--disable-domain-scale
.endif

.if ${FLAVOR:Mlargescale}
CONFIGURE_ARGS+=	--enable-large-scale
.else
CONFIGURE_ARGS+=	--disable-large-scale
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
