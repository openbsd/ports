COMMENT-main=	monitoring plugins (for Nagios, Icinga, etc)
COMMENT-dbi=	dbi monitoring plugin
COMMENT-fping=	fping monitoring plugin
COMMENT-game=	gameserver monitoring plugin
COMMENT-ldap=	ldap monitoring plugin
COMMENT-mysql=	mysql monitoring plugin
COMMENT-pgsql=	postgresql monitoring plugin
COMMENT-snmp=	monitoring plugins using snmp
COMMENT-radius=	RADIUS monitoring plugin

#SITES=		https://www.monitoring-plugins.org/download/
GH_ACCOUNT=	monitoring-plugins
GH_PROJECT=	monitoring-plugins
GH_COMMIT=	828a9720b10814c5836d03aa35af05d196c4104b
V=		3.0pre20251217
REVISION-snmp=	0
REVISION-radius= 0

DISTNAME=	monitoring-plugins-$V
PKGNAME-main=	monitoring-plugins-$V
PKGNAME-dbi=	monitoring-plugins-dbi-$V
PKGNAME-fping=	monitoring-plugins-fping-$V
PKGNAME-game=	monitoring-plugins-game-$V
PKGNAME-ldap=	monitoring-plugins-ldap-$V
PKGNAME-mysql=	monitoring-plugins-mysql-$V
PKGNAME-pgsql=	monitoring-plugins-pgsql-$V
PKGNAME-snmp=	monitoring-plugins-snmp-$V
PKGNAME-radius=	monitoring-plugins-radius-$V

CATEGORIES=	net

HOMEPAGE=	https://www.monitoring-plugins.org/

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB=	c crypto pthread

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

CONFIGURE_STYLE= autoreconf
AUTOCONF_VERSION= 2.71
AUTOMAKE_VERSION= 1.16
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include"
FAKE_FLAGS=	setuid_root_mode=0555

# cgiurl is only used to produce an href to traceroute.cgi in check_ping output
CONFIGURE_ARGS+= \
		--libexecdir=${PREFIX}/libexec/nagios \
		--with-cgiurl=/cgi-bin/nagios \
		--with-openssl=/usr \
		--without-gnutls

# can autodetect command paths, but hard-coding avoids build dependencies
# or a detection which relies on being able to run ping (builds done with
# proot on a nosuid filesystem can't run ping)
CONFIGURE_ARGS+= \
		--with-dig-command=/usr/bin/dig \
		--with-fping-command="${LOCALBASE}/sbin/fping -4" \
		--with-fping6-command="${LOCALBASE}/sbin/fping -6" \
		--with-nslookup-command=/usr/bin/nslookup \
		--with-ping-command="/sbin/ping -n -c %d %s" \
		--with-ping6-command="/sbin/ping6 -n -c %d %s" \
		--with-qstat-command=${LOCALBASE}/bin/qstat \
		--with-smbclient-command=${LOCALBASE}/bin/smbclient \
		--with-snmpget-command=${LOCALBASE}/bin/snmpget \
		--with-snmpgetnext-command=${LOCALBASE}/bin/snmpgetnext

PSEUDO_FLAVORS=	no_db
FLAVOR?=

MULTI_PACKAGES= -main -fping -game -snmp -dbi -ldap -mysql -pgsql -radius
DEBUG_PACKAGES=	${BUILD_PACKAGES}

# many broken tests, but...
TEST_IS_INTERACTIVE=Yes

WANTLIB-main=	${WANTLIB} curl m nghttp2 ssl uriparser z \
		nghttp3 ngtcp2 ngtcp2_crypto_libressl

LIB_DEPENDS-main= ${LIB_DEPENDS} \
		net/curl \
		www/uriparser

.include <bsd.port.arch.mk>

.if ${FLAVOR:Mno_db}
BUILD_PACKAGES := ${BUILD_PACKAGES:N-dbi:N-ldap:N-mysql:N-pgsql}
.endif

# don't bother with no_XX for those with no build dependencies, or
# lightweight/common build dependencies

RUN_DEPENDS-fping=	${RUN_DEPENDS} net/fping
RUN_DEPENDS-game=	${RUN_DEPENDS} games/qstat

LIB_DEPENDS-radius=	net/radcli
WANTLIB-radius+=	${WANTLIB} gmp gnutls hogweed iconv idn2 intl
WANTLIB-radius+=	nettle p11-kit radcli tasn1 unistring

BUILD_DEPENDS+=		net/p5-Net-SNMP
RUN_DEPENDS-snmp=	${RUN_DEPENDS} net/p5-Net-SNMP
LIB_DEPENDS-snmp=	net/net-snmp
WANTLIB-snmp=		c crypto m netsnmp pthread ssl

# MYSQL
.if !${BUILD_PACKAGES:M-mysql}
CONFIGURE_ARGS += --without-mysql
.else
CONFIGURE_ARGS += --with-mysql=${LOCALBASE}
.endif
LIB_DEPENDS-mysql = ${LIB_DEPENDS} databases/mariadb
WANTLIB-mysql = ${WANTLIB} crypto m mariadb ssl z

# PGSQL
.if !${BUILD_PACKAGES:M-pgsql}
CONFIGURE_ARGS += --without-pgsql
.else
CONFIGURE_ARGS += --with-pgsql=${LOCALBASE}
.endif
LIB_DEPENDS-pgsql = ${LIB_DEPENDS} databases/postgresql
WANTLIB-pgsql += ${WANTLIB} crypto m pq ssl

# DBI
.if !${BUILD_PACKAGES:M-dbi}
CONFIGURE_ARGS += --without-dbi
.endif
LIB_DEPENDS-dbi = ${LIB_DEPENDS} databases/libdbi
WANTLIB-dbi = ${WANTLIB} dbi m

# LDAP
LIB_DEPENDS-ldap = ${LIB_DEPENDS} databases/openldap
WANTLIB-ldap += ${WANTLIB} crypto lber ldap sasl2 ssl

.include <bsd.port.mk>
