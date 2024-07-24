COMMENT-main=	monitoring plugins (for Nagios, Icinga, etc)
COMMENT-dbi=	dbi monitoring plugin
COMMENT-fping=	fping monitoring plugin
COMMENT-game=	gameserver monitoring plugin
COMMENT-ldap=	ldap monitoring plugin
COMMENT-mysql=	mysql monitoring plugin
COMMENT-pgsql=	postgresql monitoring plugin
COMMENT-snmp=	monitoring plugins using snmp
COMMENT-radius=	RADIUS monitoring plugin

V=		2.4.0

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

WANTLIB=	c iconv intl pthread

COMPILER=	base-clang ports-gcc base-gcc

SITES=		https://www.monitoring-plugins.org/download/

LIB_DEPENDS=	devel/gettext,-runtime

WANTLIB-main=	${WANTLIB} crypto curl m nghttp2 ssl uriparser z

LIB_DEPENDS-main= ${LIB_DEPENDS} \
		net/curl \
		www/uriparser

CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.71
CONFIGURE_ENV+= LDFLAGS="-L${LOCALBASE}/lib"
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

# many broken tests, but...
TEST_IS_INTERACTIVE=Yes

.include <bsd.port.arch.mk>

.if ${FLAVOR:Mno_db}
BUILD_PACKAGES := ${BUILD_PACKAGES:N-dbi:N-ldap:N-mysql:N-pgsql}
.endif

# don't bother with no_XX for those with no build dependencies, or
# lightweight/common build dependencies
BUILD_DEPENDS+=		net/p5-Net-SNMP

RUN_DEPENDS-fping=	${RUN_DEPENDS} net/fping
RUN_DEPENDS-game=	${RUN_DEPENDS} games/qstat

RUN_DEPENDS-snmp=	${RUN_DEPENDS} \
			net/net-snmp \
			net/p5-Net-SNMP

LIB_DEPENDS-radius=	net/radcli
WANTLIB-radius+=	${WANTLIB} gmp gnutls hogweed idn2 nettle
WANTLIB-radius+=	p11-kit radcli tasn1 unistring
WANTLIB-radius+=	brotlidec brotlienc z zstd

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
