# $OpenBSD: Makefile,v 1.49 2010/10/26 00:42:21 sthen Exp $

# XXX note there are various "openbsd[234]" ifdefs which will need adjusting when
# OpenBSD goes to 5.x

COMMENT-main=	extendable SNMP implementation
COMMENT-perl=	SNMP modules for Perl
COMMENT-tkmib=	graphical SNMP MIB browser

V=		5.6
DISTNAME=	net-snmp-$V
PKGNAME-main=	${DISTNAME}
REVISION-main=	0
PKGNAME-perl=	p5-SNMP-$V
PKGNAME-tkmib=	net-snmp-tkmib-$V
SHARED_LIBS=	netsnmp		9.0	\
		netsnmpagent	9.0	\
		netsnmphelpers	9.0	\
		netsnmpmibs	9.0	\
		netsnmptrapd	9.0
CATEGORIES=	net perl5
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=net-snmp/}

HOMEPAGE=	http://www.net-snmp.org/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB-main=		c crypto kvm m perl pthread util wrap

MULTI_PACKAGES=		-main -perl -tkmib

WANTLIB-perl=		crypto netsnmp netsnmpagent netsnmptrapd netsnmpmibs
LIB_DEPENDS-perl=	::net/net-snmp,-main

RUN_DEPENDS-tkmib=	::net/net-snmp,-perl \
			::x11/p5-Tk

NET_SNMP_MIB_LIST=	host disman/event-mib smux mibII/mta_sendmail

# set the default mib search list:
# - net-snmp default mibs (include/net-snmp/net-snmp-config.h.in)
# - this is checked in pre-configure as we don't want it to get out of sync
DEFAULT_MIBS=		IP-MIB:IF-MIB:TCP-MIB:UDP-MIB:SNMPv2-MIB:RFC1213-MIB
# - base OpenBSD mibs (/usr/share/snmp/mibs)
OPENBSD_MIBS=		OPENBSD-BASE-MIB:OPENBSD-MEM-MIB:OPENBSD-SENSORS-MIB:OPENBSD-SNMPD-CONF

USE_GROFF=	Yes
USE_LIBTOOL=	Yes

CONFIGURE_STYLE=  autoconf
AUTOCONF_VERSION= 2.63
CONFIGURE_ARGS=   ${CONFIGURE_SHARED} \
	--enable-ipv6 \
	--enable-mfd-rewrites \
	--with-libwrap \
	--with-perl-modules \
	--with-copy-persistent-files="no" \
	--with-mib-modules="${NET_SNMP_MIB_LIST}" \
	--with-mibs="${DEFAULT_MIBS}:${OPENBSD_MIBS}" \
	--with-mibdirs="\$$HOME/.snmp/mibs:/usr/share/snmp/mibs:${TRUEPREFIX}/share/snmp/mibs" \
	--with-default-snmp-version="3" \
	--with-sys-contact="nobody@nowhere.invalid" \
	--with-sys-location="somewhere" \
	--with-logfile="/var/log/snmpd" \
	--with-persistent-directory="/var/net-snmp"

REGRESS_TARGET=	test

pre-configure:
	@if ! fgrep '#define NETSNMP_DEFAULT_MIBS "${DEFAULT_MIBS}"' \
	    ${WRKSRC}/include/net-snmp/net-snmp-config.h.in > /dev/null; then \
	    echo 'DEFAULT_MIBS in the port Makefile is out of sync'; exit 1; fi

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
	${INSTALL_DATA} ${WRKSRC}/EXAMPLE.conf \
	    ${PREFIX}/share/examples/net-snmp

.include <bsd.port.mk>
