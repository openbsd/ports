# $OpenBSD: Makefile,v 1.16 2006/06/18 12:00:03 steven Exp $

COMMENT=	"extendable SNMP implementation"
COMMENT-perl=	"SNMP modules for Perl"

DISTNAME=	net-snmp-5.1.3
PKGNAME=	${DISTNAME}p2
FULLPKGNAME-perl= p5-SNMP-5.1.3p2
SHARED_LIBS=	netsnmp		6.3	\
		netsnmpagent	6.3	\
		netsnmphelpers	6.3	\
		netsnmpmibs	6.3	\
		netsnmptrapd	6.3
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=net-snmp/}

HOMEPAGE=	http://www.net-snmp.org

MAINTAINER=	Tim Kornau <opti@openbsd.de>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		crypto kvm m wrap z

MULTI_PACKAGES=	-perl
SUBPACKAGE?=

.if ${SUBPACKAGE} == "-perl" 
CATEGORIES=	net perl5
.  if defined(PACKAGING)
LIB_DEPENDS+=	netsnmpmibs,netsnmphelpers,netsnmpagent,netsnmp::net/net-snmp
.  endif
.else
WANTLIB+=	c
.endif

NET_SNMP_MIB_LIST= host disman/event-mib smux mibII/mta_sendmail

USE_LIBTOOL=	Yes
CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS=	${CONFIGURE_SHARED} --with-libwrap --with-perl-modules \
	--with-copy-persistent-files="no" \
	--with-mib-modules="${NET_SNMP_MIB_LIST}" \
	--with-default-snmp-version="3" \
	--with-sys-contact="nobody@nowhere.invalid" \
	--with-sys-location="somewhere" \
	--with-logfile="/var/log/snmpd" \
	--with-persistent-directory="/var/net-snmp"
REGRESS_TARGET=	test

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
