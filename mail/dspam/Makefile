# $OpenBSD: Makefile,v 1.50 2014/09/13 18:09:21 brad Exp $

COMMENT-main =	anti-spam filter
COMMENT-pgsql =	PostgreSQL driver for dspam
COMMENT-mysql =	MySQL driver for dspam

VERSION =	3.10.2
DISTNAME =	dspam-3.10.2
PKGNAME-main =	${PKGNAME}
.for p in pgsql mysql
PKGNAME-$p =	dspam-$p-${VERSION}
# non-flavoured db backend packages
FULLPKGNAME-$p = dspam-$p-${VERSION}
FULLPKGPATH-$p = ${PKGPATH},-$p
.endfor
REVISION =		1
REVISION-mysql =	2

SHARED_LIBS =	dspam	9.0
CATEGORIES =	mail
SHARED_ONLY =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=dspam/}

HOMEPAGE =	http://dspam.nuclearelephant.com/

MAINTAINER =	Todd T. Fries <todd@OpenBSD.org>

# AGPLv3/BSD/GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MULTI_PACKAGES = -main -mysql -pgsql
WANTLIB = crypto m pthread
WANTLIB-main += ${WANTLIB} c sqlite3

USE_LIBTOOL =		Yes
LIBTOOL_FLAGS =	--tag=disable-static
USE_GROFF =		Yes
CONFIGURE_STYLE =	gnu
SEPARATE_BUILD =		Yes
CONFIGURE_ARGS +=	--with-dspam-home=/var/dspam \
			--with-dspam-home-owner=_dspam \
			--with-dspam-home-group=_dspam \
			--with-dspam-home-mode=0755 \
			--with-dspam-owner=root \
			--with-dspam-group=bin \
			--with-dspam-mode=0555 \
			--with-storage-driver=sqlite3_drv,mysql_drv,pgsql_drv,hash_drv \
			--with-mysql-includes=${LOCALBASE}/include/mysql \
			--with-mysql-libraries=${LOCALBASE}/lib/mysql \
			--with-pgsql-includes=${LOCALBASE}/include/postgresql \
			--with-pgsql-libraries=${LOCALBASE}/lib \
			--enable-virtual-users \
			--enable-preferences-extension \
			--enable-daemon \
			--enable-long-usernames

EXAMPLESDIR =	${PREFIX}/share/examples/dspam

FLAVORS =	clamav ldap domainscale largescale
FLAVOR?=

. if ${FLAVOR:Mlargescale} && ${FLAVOR:Mdomainscale}
ERRORS += "Fatal: choose either domainscale or largescale, not both"
. endif

LIB_DEPENDS-mysql=	${LIB_DEPENDS} ${PKGNAME-main}:mail/dspam,-main \
			databases/mariadb
WANTLIB-mysql=		${WANTLIB} dspam z ssl lib/mysql/mysqlclient

LIB_DEPENDS-pgsql=	${LIB_DEPENDS} ${PKGNAME-main}:mail/dspam,-main \
			databases/postgresql
WANTLIB-pgsql=		${WANTLIB} c dspam pq ssl

.if ${FLAVOR:Mclamav}
CONFIGURE_ARGS +=	--enable-clamav
LIB_DEPENDS-main+=	security/clamav
WANTLIB-main+=		clamav>=1
.endif

.if ${FLAVOR:Mldap}
CONFIGURE_ARGS +=	--enable-external-lookup
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
LIB_DEPENDS +=		databases/openldap
WANTLIB +=		ssl sasl2 ldap-2.4 lber-2.4
.endif

.if ${FLAVOR:Mdomainscale}
CONFIGURE_ARGS +=	--enable-domain-scale
.else
CONFIGURE_ARGS +=	--disable-domain-scale
.endif

.if ${FLAVOR:Mlargescale}
CONFIGURE_ARGS +=	--enable-large-scale
.else
CONFIGURE_ARGS +=	--disable-large-scale
.endif

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKBUILD}/src/dspam.conf \
		${PREFIX}/share/examples/dspam/dspam.conf
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dspam
	${INSTALL_DATA} ${WRKSRC}/{README,UPGRADING,RELEASE.NOTES,doc/*.txt} ${PREFIX}/share/doc/dspam
.for DRIVER in mysql sqlite pgsql
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}/${DRIVER}
	${INSTALL_DATA} ${WRKSRC}/src/tools.${DRIVER}_drv/*.sql \
		${EXAMPLESDIR}/${DRIVER}
.endfor


.include <bsd.port.mk>
