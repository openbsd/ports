# $OpenBSD: Makefile,v 1.41 2009/11/22 15:36:33 jasper Exp $

COMMENT-main=	extendable SNMP implementation
COMMENT-perl=	SNMP modules for Perl
COMMENT-tkmib=	graphical SNMP MIB browser

V=		5.4.2.1
DISTNAME=	net-snmp-${V}
PKGNAME-main=	${DISTNAME}p3
PKGNAME-perl=	p5-SNMP-${V}p1
PKGNAME-tkmib=	net-snmp-tkmib-${V}
SHARED_LIBS=	netsnmp		8.0	\
		netsnmpagent	8.1	\
		netsnmphelpers	8.0	\
		netsnmpmibs	8.0	\
		netsnmptrapd	8.0
CATEGORIES=	net perl5
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=net-snmp/}

HOMEPAGE=	http://www.net-snmp.org

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB-main=		c crypto kvm m perl util wrap

MULTI_PACKAGES=	-main -perl -tkmib

LIB_DEPENDS-perl=	netsnmptrapd,netsnmpmibs,netsnmphelpers,netsnmpagent,netsnmp::net/net-snmp,-main
RUN_DEPENDS-tkmib=	::net/net-snmp,-perl \
			::x11/p5-Tk

NET_SNMP_MIB_LIST= host disman/event-mib smux mibII/mta_sendmail

USE_LIBTOOL=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
	--enable-ipv6 \
	--with-libwrap \
	--with-perl-modules \
	--with-copy-persistent-files="no" \
	--with-mib-modules="${NET_SNMP_MIB_LIST}" \
	--with-default-snmp-version="3" \
	--with-sys-contact="nobody@nowhere.invalid" \
	--with-sys-location="somewhere" \
	--with-logfile="/var/log/snmpd" \
	--with-persistent-directory="/var/net-snmp"

# gcc 3.3.5 internal compiler error
.if ${MACHINE_ARCH} == "mips64"
CFLAGS+=  -O0
.endif

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
