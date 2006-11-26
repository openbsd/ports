# $OpenBSD: Makefile,v 1.15 2006/11/26 01:29:12 espie Exp $

COMMENT-main=	"nagios base plugins"
COMMENT-fping=	"fping plugin"
COMMENT-game=	"gameserver plugin"
COMMENT-ldap=	"ldap plugin"
COMMENT-mysql=	"mysql plugin"
COMMENT-ntp=	"ntp plugin"
COMMENT-pgsql=	"postgresql plugin"
COMMENT-samba=	"samba plugin"
COMMENT-snmp=	"plugins using snmp"

V=		1.4.5
DISTNAME=	nagios-plugins-${V}
PKGNAME-main=	nagios-plugins-${V}p0
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

BUILD_DEPENDS=	::games/qstat \
		::net/fping

FAKE_FLAGS=	setuid_root_mode=0555

USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	PATH_TO_FPING=${LOCALBASE}/sbin/fping \
		PATH_TO_NTPDATE=${LOCALBASE}/sbin/ntpdate \
		PATH_TO_NTPDC=${LOCALBASE}/sbin/ntpdc \
		PATH_TO_NTPQ=${LOCALBASE}/sbin/ntpq
CONFIGURE_ARGS+=--libexecdir=${PREFIX}/libexec/nagios \
		--with-cgiurl=/cgi-bin/nagios \
		--with-openssl=/usr \
		--without-gnutls

PSEUDO_FLAVORS=	no_db no_ntp no_samba no_snmp
FLAVOR?=

MULTI_PACKAGES=	-main -fping -game

.if ! ${FLAVOR:L:Mno_db}
MULTI_PACKAGES+=-ldap -mysql -pgsql
CONFIGURE_ARGS+=--with-mysql=${LOCALBASE} \
		--with-pgsql=${LOCALBASE}
CFLAGS+=	-DLDAP_DEPRECATED
.else
CONFIGURE_ARGS+=--without-mysql --without-pgsql
.endif

.if ! ${FLAVOR:L:Mno_ntp}
MULTI_PACKAGES+=-ntp
BUILD_DEPENDS+=	::net/ntp
.endif

.if ! ${FLAVOR:L:Mno_samba}
MULTI_PACKAGES+=-samba
BUILD_DEPENDS+=	::net/samba
.endif

.if ! ${FLAVOR:L:Mno_snmp}
MULTI_PACKAGES+=-snmp
BUILD_DEPENDS+=	::net/p5-Net-SNMP \
		::net/net-snmp
.endif

WANTLIB=		c crypto ssl

LIB_DEPENDS-fping=
RUN_DEPENDS-fping=	::net/fping

LIB_DEPENDS-game=
RUN_DEPENDS-game=	::games/qstat

WANTLIB-ldap=		${WANTLIB} sasl2 asn1 com_err gssapi krb5
LIB_DEPENDS-ldap=	lber,ldap:openldap-client-*:databases/openldap

WANTLIB-mysql=		${WANTLIB} m z
LIB_DEPENDS-mysql=	mysqlclient:mysql-client-*:databases/mysql

LIB_DEPENDS-ntp=
WANTLIB-ntp=		${WANTLIB} m
RUN_DEPENDS-ntp=	::net/ntp

WANTLIB-pgsql=		${WANTLIB} crypto
LIB_DEPENDS-pgsql=	pq:postgresql-client-*:databases/postgresql

LIB_DEPENDS-samba=
WANTLIB-samba=
RUN_DEPENDS-samba=	::net/samba

LIB_DEPENDS-snmp=
RUN_DEPENDS-snmp=	::net/net-snmp \
			::net/p5-Net-SNMP

WANTLIB-main=		${WANTLIB} m
LIB_DEPENDS-main=

MODULES=	gettext

# many broken tests, but...
REGRESS_IS_INTERACTIVE=Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nagios-plugins
	${INSTALL_DATA} ${FILESDIR}/README.OpenBSD \
		${PREFIX}/share/doc/nagios-plugins

.include <bsd.port.mk>
