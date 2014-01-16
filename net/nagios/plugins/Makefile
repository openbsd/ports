# $OpenBSD: Makefile,v 1.42 2014/01/16 22:35:20 sthen Exp $

COMMENT-main=	nagios base plugins
COMMENT-dbi=	dbi plugin
COMMENT-fping=	fping plugin
COMMENT-game=	gameserver plugin
COMMENT-ldap=	ldap plugin
COMMENT-mysql=	mysql plugin
COMMENT-ntp=	ntp plugin
COMMENT-pgsql=	postgresql plugin
COMMENT-samba=	samba plugin
COMMENT-snmp=	plugins using snmp

V=		1.5
REVISION=	0
DISTNAME=	nagios-plugins-$V
PKGNAME-main=	nagios-plugins-$V
PKGNAME-dbi=	nagios-plugins-dbi-$V
PKGNAME-fping=	nagios-plugins-fping-$V
PKGNAME-game=	nagios-plugins-game-$V
PKGNAME-ldap=	nagios-plugins-ldap-$V
PKGNAME-mysql=	nagios-plugins-mysql-$V
PKGNAME-ntp=	nagios-plugins-ntp-$V
PKGNAME-pgsql=	nagios-plugins-pgsql-$V
PKGNAME-samba=	nagios-plugins-samba-$V
PKGNAME-snmp=	nagios-plugins-snmp-$V
CATEGORIES=	net

HOMEPAGE=	https://www.monitoring-plugins.org/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

# see below for WANTLIB

MASTER_SITES=	https://www.monitoring-plugins.org/download/

BUILD_DEPENDS=	games/qstat \
		net/fping

FAKE_FLAGS=	setuid_root_mode=0555

CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.69
CONFIGURE_ENV=	PATH_TO_FPING=${LOCALBASE}/sbin/fping \
		PATH_TO_NTPDATE=${LOCALBASE}/sbin/ntpdate \
		PATH_TO_NTPDC=${LOCALBASE}/sbin/ntpdc \
		PATH_TO_NTPQ=${LOCALBASE}/sbin/ntpq \
		CPPFLAGS="$$(krb5-config --cflags)"
CONFIGURE_ARGS+=--libexecdir=${PREFIX}/libexec/nagios \
		--with-cgiurl=/cgi-bin/nagios \
		--with-openssl=/usr \
		--without-gnutls

PSEUDO_FLAVORS=	no_db no_ntp no_samba no_snmp
FLAVOR?=

MULTI_PACKAGES=	-main -fping -game

.if ! ${FLAVOR:Mno_db}
MULTI_PACKAGES+=-dbi -ldap -mysql -pgsql
CONFIGURE_ARGS+=--with-mysql=${LOCALBASE} \
		--with-pgsql=${LOCALBASE}
CFLAGS+=	-DLDAP_DEPRECATED
.else
CONFIGURE_ARGS+=--without-dbi --without-mysql --without-pgsql
.endif

.if ! ${FLAVOR:Mno_ntp}
MULTI_PACKAGES+=-ntp
BUILD_DEPENDS+=	net/ntp
.endif

.if ! ${FLAVOR:Mno_samba}
MULTI_PACKAGES+=-samba
BUILD_DEPENDS+=	net/samba
.endif

.if ! ${FLAVOR:Mno_snmp}
MULTI_PACKAGES+=-snmp
BUILD_DEPENDS+=	net/p5-Net-SNMP \
		net/net-snmp
.endif

WANTLIB=		c pthread

WANTLIB-dbi=		${WANTLIB} dbi m
LIB_DEPENDS-dbi=	databases/libdbi \
			${LIB_DEPENDS}

RUN_DEPENDS-fping=	net/fping

RUN_DEPENDS-game=	games/qstat

WANTLIB-ldap+=		${WANTLIB} asn1 com_err crypto gssapi krb5
WANTLIB-ldap+=		lber-2.4 ldap-2.4 sasl2 ssl
WANTLIB-ldap+=		heimbase roken wind
LIB_DEPENDS-ldap=	databases/openldap \
			${LIB_DEPENDS}

WANTLIB-mysql=		${WANTLIB} crypto m mysqlclient ssl z
LIB_DEPENDS-mysql=	databases/mysql \
			${LIB_DEPENDS}

WANTLIB-ntp=		${WANTLIB} m
RUN_DEPENDS-ntp=	net/ntp

WANTLIB-pgsql+=		${WANTLIB} com_err crypto pq ssl
WANTLIB-pgsql+=		asn1 krb5 heimbase roken wind
LIB_DEPENDS-pgsql=	databases/postgresql \
			${LIB_DEPENDS}

LIB_DEPENDS-samba=
WANTLIB-samba=
RUN_DEPENDS-samba=	net/samba

RUN_DEPENDS-snmp=	net/net-snmp \
			net/p5-Net-SNMP

WANTLIB-main=		${WANTLIB} crypto m ssl

MODULES=		devel/gettext

# many broken tests, but...
TEST_IS_INTERACTIVE=Yes

.include <bsd.port.mk>
