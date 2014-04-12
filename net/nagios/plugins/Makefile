# $OpenBSD: Makefile,v 1.44 2014/04/12 19:52:19 zhuk Exp $

COMMENT-main=	monitoring plugins (for Nagios, Icinga, etc)
COMMENT-dbi=	dbi monitoring plugin
COMMENT-fping=	fping monitoring plugin
COMMENT-game=	gameserver monitoring plugin
COMMENT-ldap=	ldap monitoring plugin
COMMENT-mysql=	mysql monitoring plugin
COMMENT-pgsql=	postgresql monitoring plugin
COMMENT-samba=	samba monitoring plugin
COMMENT-snmp=	monitoring plugins using snmp

V=		1.5
REVISION=	2
REVISION-main=	3
# name currently mid-transition from nagios-plugins
#DISTNAME=	monitoring-plugins-$V
DISTNAME=	nagios-plugins-$V
PKGNAME-main=	monitoring-plugins-$V
PKGNAME-dbi=	monitoring-plugins-dbi-$V
PKGNAME-fping=	monitoring-plugins-fping-$V
PKGNAME-game=	monitoring-plugins-game-$V
PKGNAME-ldap=	monitoring-plugins-ldap-$V
PKGNAME-mysql=	monitoring-plugins-mysql-$V
PKGNAME-pgsql=	monitoring-plugins-pgsql-$V
PKGNAME-samba=	monitoring-plugins-samba-$V
PKGNAME-snmp=	monitoring-plugins-snmp-$V
CATEGORIES=	net

HOMEPAGE=	https://www.monitoring-plugins.org/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c pthread
WANTLIB-main=	${WANTLIB} crypto m ssl
MODULES=	devel/gettext

MASTER_SITES=	https://www.monitoring-plugins.org/download/

FAKE_FLAGS=	setuid_root_mode=0555

CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.69
CONFIGURE_ENV=	CPPFLAGS="$$(krb5-config --cflags)"
CONFIGURE_ARGS+= --libexecdir=${PREFIX}/libexec/nagios \
		--with-cgiurl=/cgi-bin/nagios \
		--with-openssl=/usr \
		--without-gnutls
# can autodetect command paths, but hard-coding avoids build dependencies
CONFIGURE_ARGS+= --with-fping-command=${LOCALBASE}/sbin/fping \
		--with-fping6-command=${LOCALBASE}/sbin/fping6 \
		--with-smbclient-command=${LOCALBASE}/bin/smbclient \
		--with-snmpget-command=${LOCALBASE}/bin/snmpget \
		--with-snmpgetnext-command=${LOCALBASE}/bin/snmpgetnext \
		--with-qstat-command=${LOCALBASE}/bin/qstat
# listed here to make it easier to move BIND to ports
CONFIGURE_ARGS+= --with-dig-command=/usr/sbin/dig \
		--with-nslookup-command=/usr/sbin/nslookup
# missing: radius

CFLAGS+=	-DLDAP_DEPRECATED

PSEUDO_FLAVORS=	no_db
FLAVOR?=

MULTI_PACKAGES= -main -fping -game -samba -snmp -dbi -ldap -mysql -pgsql

# many broken tests, but...
TEST_IS_INTERACTIVE=Yes

.include <bsd.port.arch.mk>

.if ${FLAVOR:Mno_db}
BUILD_PACKAGES := ${BUILD_PACKAGES:N-dbi:N-ldap:N-mysql:N-pgsql}
.endif

# no build dependencies, or lightweight build dependencies
BUILD_DEPENDS+=		net/p5-Net-SNMP
RUN_DEPENDS-fping=	${RUN_DEPENDS} net/fping
RUN_DEPENDS-game=	${RUN_DEPENDS} games/qstat
LIB_DEPENDS-samba=
WANTLIB-samba=
RUN_DEPENDS-samba=	net/samba
RUN_DEPENDS-snmp=	${RUN_DEPENDS} net/net-snmp net/p5-Net-SNMP

# MYSQL
.if !${BUILD_PACKAGES:M-mysql}
CONFIGURE_ARGS += --without-mysql
.else
CONFIGURE_ARGS += --with-mysql=${LOCALBASE}
.endif
LIB_DEPENDS-mysql = ${LIB_DEPENDS} databases/mysql
WANTLIB-mysql = ${WANTLIB} crypto m mysqlclient ssl z

# PGSQL
.if !${BUILD_PACKAGES:M-pgsql}
CONFIGURE_ARGS += --without-pgsql
.else
CONFIGURE_ARGS += --with-pgsql=${LOCALBASE}
.endif
LIB_DEPENDS-pgsql = ${LIB_DEPENDS} databases/postgresql
WANTLIB-pgsql += ${WANTLIB} com_err crypto pq ssl
WANTLIB-pgsql += asn1 krb5 heimbase roken wind

# DBI
.if !${BUILD_PACKAGES:M-dbi}
CONFIGURE_ARGS += --without-dbi
.endif
LIB_DEPENDS-dbi = ${LIB_DEPENDS} databases/libdbi
WANTLIB-dbi = ${WANTLIB} dbi m

# LDAP
LIB_DEPENDS-ldap = ${LIB_DEPENDS} databases/openldap
WANTLIB-ldap += ${WANTLIB} asn1 com_err crypto gssapi krb5
WANTLIB-ldap += lber-2.4 ldap-2.4 sasl2 ssl heimbase roken wind

.include <bsd.port.mk>
