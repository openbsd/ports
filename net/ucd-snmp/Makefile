# $OpenBSD: Makefile,v 1.15 2000/08/05 09:39:20 danh Exp $

DISTNAME=	ucd-snmp-4.1.2
CATEGORIES=     net
NEED_VERSION=	1.319
HOMEPAGE=	http://ucd-snmp.ucdavis.edu/
MAINTAINER=	danh@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 

MASTER_SITES=	ftp://ucd-snmp.ucdavis.edu/	\
		ftp://sunsite.cnlab-switch.ch/mirror/ucd-snmp/

CONFIGURE_STYLE= gnu autoconf dest
CONFIGURE_ARGS+= --with-persistent-directory='/var/ucd-snmp' \
		 --with-sys-contact='<change_me>' \
		 --with-sys-location='<change_me>' \
	 	 --with-logfile='/var/log/snmpd'

BIN=	encode_keychange snmpbulkget snmpbulkwalk snmpdelta \
	snmpget snmpgetnext snmpnetstat snmpset snmpstatus  \
	snmptable snmptest snmptranslate snmptrap snmpusm snmpwalk 
SBIN=	snmpd snmptrapd

post-install:
	( cd ${PREFIX}/bin && strip ${BIN} )
	( cd ${PREFIX}/sbin && strip ${SBIN} )
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ucd-snmp
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ucd-snmp
	${INSTALL_DATA} ${WRKSRC}/EXAMPLE.conf ${PREFIX}/share/examples/ucd-snmp
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/ucd-snmp
	${INSTALL_DATA} ${WRKSRC}/README.snmpv3 ${PREFIX}/share/doc/ucd-snmp
	${INSTALL_DATA} ${WRKSRC}/FAQ ${PREFIX}/share/doc/ucd-snmp
	${INSTALL_DATA} ${WRKSRC}/AGENT.txt ${PREFIX}/share/doc/ucd-snmp

.include <bsd.port.mk>
