# $OpenBSD: Makefile,v 1.20 2000/10/25 20:46:49 brad Exp $

VERSION=	4.1.2
DISTNAME=	ucd-snmp-${VERSION}
CATEGORIES=     net
NEED_VERSION=	1.336
MASTER_SITES=	ftp://ucd-snmp.ucdavis.edu/	\
		ftp://sunsite.cnlab-switch.ch/mirror/ucd-snmp/

HOMEPAGE=	http://ucd-snmp.ucdavis.edu/

MAINTAINER=	Dan Harnett <danh@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 

CONFIGURE_STYLE= gnu autoconf dest
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-persistent-directory="/var/ucd-snmp" \
	  	--with-logfile="/var/log/snmpd" \
		--with-defaults --with-zlib

BIN=	encode_keychange snmpbulkget snmpbulkwalk snmpdelta \
	snmpget snmpgetnext snmpnetstat snmpset snmpstatus  \
	snmptable snmptest snmptranslate snmptrap snmpusm snmpwalk 
SBIN=	snmpd snmptrapd
LIBS=	snmplib/libsnmp.a agent/libucdagent.a agent/libucdmibs.a

STATIC_FLAGS=	SHLIB_VERSION='' SHLIB_EXTENSION='a' \
		SHLIB_LD_CMD='ar cr' RANLIB='ranlib'

post-build:
	@cd ${WRKSRC}/snmplib && ${MAKE} ${STATIC_FLAGS} all
	@cd ${WRKSRC}/agent && ${MAKE} ${STATIC_FLAGS} all
	@cd ${WRKSRC}/agent && ${MAKE} ${STATIC_FLAGS} all

post-install:
	@cd ${PREFIX}/bin && strip ${BIN}
	@cd ${PREFIX}/sbin && strip ${SBIN}
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ucd-snmp
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ucd-snmp
	${INSTALL_DATA} ${WRKSRC}/EXAMPLE.conf ${PREFIX}/share/examples/ucd-snmp
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/ucd-snmp
	${INSTALL_DATA} ${WRKSRC}/README.snmpv3 ${PREFIX}/share/doc/ucd-snmp
	${INSTALL_DATA} ${WRKSRC}/FAQ ${PREFIX}/share/doc/ucd-snmp
	${INSTALL_DATA} ${WRKSRC}/AGENT.txt ${PREFIX}/share/doc/ucd-snmp
	@cd ${WRKSRC} && ${INSTALL_DATA} ${LIBS} ${PREFIX}/lib

.include <bsd.port.mk>
