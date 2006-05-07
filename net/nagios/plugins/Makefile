# $OpenBSD: Makefile,v 1.9 2006/05/07 07:42:09 sturm Exp $

COMMENT=	"nagios base plugins"
COMMENT-fping=	"fping plugin"
COMMENT-game=	"gameserver plugin"
COMMENT-ldap=	"ldap plugin"
COMMENT-mysql=	"mysql plugin"
COMMENT-ntp=	"ntp plugin"
COMMENT-pgsql=	"postgresql plugin"
COMMENT-samba=	"samba plugin"
COMMENT-snmp=	"plugins using snmp"

V=		1.4.3
DISTNAME=	nagios-plugins-${V}
PKGNAME=	nagios-plugins-${V}p0
PKGNAME-fping=	nagios-plugins-fping-${V}
PKGNAME-game=	nagios-plugins-game-${V}
PKGNAME-ldap=	nagios-plugins-ldap-${V}
PKGNAME-mysql=	nagios-plugins-mysql-${V}
PKGNAME-ntp=	nagios-plugins-ntp-${V}
PKGNAME-pgsql=	nagios-plugins-pgsql-${V}
PKGNAME-samba=	nagios-plugins-samba-${V}
PKGNAME-snmp=	nagios-plugins-snmp-${V}
CATEGORIES=	net

HOMEPAGE=	http://nagiosplug.sourceforge.net/

MAINTAINER=	Nikolay Sturm <sturm@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# see below for WANTLIB

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=nagiosplug/}

BUILD_DEPENDS=	qstat::games/qstat \
		fping::net/fping

FAKE_FLAGS=	setuid_root_mode=0555

USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	PATH_TO_FPING=${LOCALBASE}/sbin/fping \
		PATH_TO_NTPDATE=${LOCALBASE}/sbin/ntpdate \
		PATH_TO_NTPDC=${LOCALBASE}/sbin/ntpdc \
		PATH_TO_NTPQ=${LOCALBASE}/sbin/ntpq
CONFIGURE_ARGS+=--libexecdir=${PREFIX}/libexec/nagios \
		--with-cgiurl=/cgi-bin/nagios \
		--with-nagios-user=_nagios \
		--with-nagios-group=_nagios \
		--with-openssl=/usr \

PSEUDO_FLAVORS=	no_db no_ntp no_samba no_snmp
FLAVOR?=

MULTI_PACKAGES=	-fping -game
SUBPACKAGE?=

.if ! ${FLAVOR:L:Mno_db}
MULTI_PACKAGES+=-ldap -mysql -pgsql
BUILD_DEPENDS+=	:mysql-client-*:databases/mysql \
		:openldap-client-*:databases/openldap \
		:postgresql-client-*:databases/postgresql
CONFIGURE_ARGS+=--with-mysql=${LOCALBASE} \
		--with-pgsql=${LOCALBASE}
CFLAGS+=	-DLDAP_DEPRECATED
.else
CONFIGURE_ARGS+=--without-mysql --without-pgsql
.endif

.if ! ${FLAVOR:L:Mno_ntp}
MULTI_PACKAGES+=-ntp
BUILD_DEPENDS+=	ntpdate::net/ntp
.endif

.if ! ${FLAVOR:L:Mno_samba}
MULTI_PACKAGES+=-samba
BUILD_DEPENDS+=	smbclient::net/samba
.endif

.if ! ${FLAVOR:L:Mno_snmp}
MULTI_PACKAGES+=-snmp
BUILD_DEPENDS+=	::net/p5-Net-SNMP \
		snmpget::net/net-snmp
.endif

.if defined(PACKAGING)
WANTLIB=	c crypto ssl
.  if ${SUBPACKAGE} == "-fping"
RUN_DEPENDS=	fping::net/fping
.  elif ${SUBPACKAGE} == "-game"
RUN_DEPENDS=	qstat::games/qstat
.  elif ${SUBPACKAGE} == "-ldap"
WANTLIB+=	sasl2
LIB_DEPENDS=	lber,ldap:openldap-client-*:databases/openldap
.  elif ${SUBPACKAGE} == "-mysql"
WANTLIB+=	m z
LIB_DEPENDS=	mysqlclient:mysql-client-*:databases/mysql
.  elif ${SUBPACKAGE} == "-ntp"
WANTLIB=
RUN_DEPENDS=	ntpdate::net/ntp
.  elif ${SUBPACKAGE} == "-pgsql"
WANTLIB+=	crypto
LIB_DEPENDS=	pq:postgresql-client-*:databases/postgresql
.  elif ${SUBPACKAGE} == "-samba"
WANTLIB=
RUN_DEPENDS=	smbclient::net/samba
.  elif ${SUBPACKAGE} == "-snmp"
RUN_DEPENDS=	snmpget::net/net-snmp \
		::net/p5-Net-SNMP
.  else
WANTLIB+=	m
.  endif
.else
MODULES=	gettext
.endif

NO_REGRESS=	lots of broken tests

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nagios-plugins
	${INSTALL_DATA} ${FILESDIR}/README.OpenBSD \
		${PREFIX}/share/doc/nagios-plugins

.include <bsd.port.mk>
