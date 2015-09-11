# $OpenBSD: Makefile,v 1.81 2015/09/11 16:33:05 sthen Exp $

SHARED_ONLY=	Yes

COMMENT-main=	extendable SNMP implementation
COMMENT-tkmib=	graphical SNMP MIB browser

V=		5.7.3
REVISION-main=	1

DISTNAME=	net-snmp-$V
MULTI_PACKAGES=	-main -tkmib
PKGNAME-main=	net-snmp-$V
PKGNAME-tkmib=	net-snmp-tkmib-$V

LIBV=		14.0
.for i in netsnmp netsnmpagent netsnmphelpers netsnmpmibs netsnmptrapd
SHARED_LIBS +=	$i ${LIBV}
.endfor

CATEGORIES=	net perl5
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=net-snmp/}

HOMEPAGE=	http://www.net-snmp.org/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB-main=		c crypto kvm m perl util

RUN_DEPENDS-tkmib=	net/net-snmp \
			x11/p5-Tk

NET_SNMP_MIB_LIST=	smux mibII/mta_sendmail

# set the default mib search list:
# - net-snmp default mibs (include/net-snmp/net-snmp-config.h.in)
# - this is checked in pre-configure as we don't want it to get out of sync
DEFAULT_MIBS=		IP-MIB:IF-MIB:TCP-MIB:UDP-MIB:SNMPv2-MIB:RFC1213-MIB
# - base OpenBSD mibs (/usr/share/snmp/mibs), SNMPD-CONF pulls in the rest
OPENBSD_MIBS=		OPENBSD-SNMPD-CONF


CONFIGURE_STYLE=  autoconf
AUTOCONF_VERSION= 2.68
CONFIGURE_ARGS=   ${CONFIGURE_SHARED} \
	--enable-ipv6 \
	--enable-mfd-rewrites \
	--with-copy-persistent-files="no" \
	--with-mib-modules="${NET_SNMP_MIB_LIST}" \
	--with-mibs="${DEFAULT_MIBS}:${OPENBSD_MIBS}" \
	--with-mibdirs="\$$HOME/.snmp/mibs:/usr/share/snmp/mibs:${TRUEPREFIX}/share/snmp/mibs" \
	--with-default-snmp-version="3" \
	--with-sys-contact="nobody@nowhere.invalid" \
	--with-sys-location="somewhere" \
	--with-temp-file-pattern=/tmp/snmpdXXXXXXXXXXXX \
	--with-logfile="/var/log/snmpd" \
	--with-persistent-directory="/var/net-snmp"
TEST_TARGET=	test

pre-configure:
	@if ! grep '^#define NETSNMP_DEFAULT_MIBS "${DEFAULT_MIBS}"$$' \
	    ${WRKSRC}/include/net-snmp/net-snmp-config.h.in > /dev/null; then \
	    echo 'DEFAULT_MIBS in the port Makefile is out of sync'; exit 1; fi
	@perl -pi -e 's,(snmpd\(8\)|snmpd\.conf\(5\)),netsnmp-\1,' ${WRKSRC}/man/*

post-install:
	@perl -pi -e 's,^(#define[ ]PACKAGE_.*)$$,/* $$1 */,' \
	    ${PREFIX}/include/net-snmp/net-snmp-config.h
	@touch ${PREFIX}/share/snmp/mibs/.index
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/net-snmp
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/net-snmp
	${INSTALL_DATA} ${WRKSRC}/README.snmpv3 ${PREFIX}/share/doc/net-snmp
	${INSTALL_DATA} ${WRKSRC}/FAQ ${PREFIX}/share/doc/net-snmp
	${INSTALL_DATA} ${WRKSRC}/AGENT.txt ${PREFIX}/share/doc/net-snmp
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/net-snmp
	${INSTALL_DATA} ${WRKBUILD}/EXAMPLE.conf \
	    ${PREFIX}/share/examples/net-snmp
.for i j in man5 snmpd.conf.5 man8 snmpd.8
	mv ${PREFIX}/man/$i/$j ${PREFIX}/man/$i/netsnmp-$j
.endfor

.include <bsd.port.mk>
