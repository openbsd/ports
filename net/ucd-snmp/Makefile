# 
# $OpenBSD: Makefile,v 1.12 2000/06/27 06:36:10 jakob Exp $
# 

DISTNAME=		ucd-snmp-4.1.2
CATEGORIES=     	net
NEED_VERSION=		1.302
HOMEPAGE=		http://ucd-snmp.ucdavis.edu/
MAINTAINER=		danh@nfol.com

PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 

MASTER_SITES=		ftp://ucd-snmp.ucdavis.edu/	\
		        ftp://sunsite.cnlab-switch.ch/mirror/ucd-snmp/

CONFIGURE_STYLE=	gnu dest
CONFIGURE_ARGS+=	--with-persistent-directory='/var/ucd-snmp'
CONFIGURE_ARGS+=	--with-sys-contact='<change_me>'
CONFIGURE_ARGS+=	--with-sys-location='<change_me>'
CONFIGURE_ARGS+=	--with-logfile='/var/log/snmpd'

BIN=		encode_keychange snmpbulkget snmpbulkwalk snmpdelta \
		snmpget snmpgetnext snmpnetstat snmpset snmpstatus  \
		snmptable snmptest snmptranslate snmptrap snmpusm snmpwalk 
SBIN=           snmpd snmptrapd

post-install:
	( cd ${PREFIX}/bin; strip ${BIN} )
	( cd ${PREFIX}/sbin; strip ${SBIN} )
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ucd-snmp
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ucd-snmp
	cd ${WRKSRC}; ${INSTALL_DATA} EXAMPLE.conf ${PREFIX}/share/examples/ucd-snmp
	cd ${WRKSRC}; ${INSTALL_DATA} README ${PREFIX}/share/doc/ucd-snmp
	cd ${WRKSRC}; ${INSTALL_DATA} README.snmpv3 ${PREFIX}/share/doc/ucd-snmp
	cd ${WRKSRC}; ${INSTALL_DATA} FAQ ${PREFIX}/share/doc/ucd-snmp
	cd ${WRKSRC}; ${INSTALL_DATA} AGENT.txt ${PREFIX}/share/doc/ucd-snmp

.include <bsd.port.mk>
