# $OpenBSD: Makefile,v 1.25 2001/02/01 21:50:30 danh Exp $

DISTNAME=	ucd-snmp-4.2
CATEGORIES=     net
NEED_VERSION=	1.348
MASTER_SITES=   ${MASTER_SITE_SOURCEFORGE} 
MASTER_SITE_SUBDIR= net-snmp

HOMEPAGE=	http://net-snmp.sourceforge.net/

MAINTAINER=	Dan Harnett <danh@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 

CONFIGURE_STYLE= autoconf dest
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --with-defaults --with-logfile='/var/log/snmpd' \
		 --with-persistent-directory='/var/ucd-snmp' \
		 --with-libwrap='/usr' --with-openssl --with-zlib
CONFIGURE_ENV=	VERSION_INFO='42:0:0'

SNMP_BIN=	encode_keychange snmpbulkget snmpbulkwalk snmpdelta \
		snmpdf snmpget snmpgetnext snmpnetstat snmpset snmpstatus \
		snmptable snmptest snmptranslate snmptrap snmpusm snmpvacm \
		snmpwalk 
SNMP_SBIN=	snmpd snmptrapd

post-install:
	@cd ${PREFIX}/bin && strip ${SNMP_BIN}
	@cd ${PREFIX}/sbin && strip ${SNMP_SBIN}
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ucd-snmp
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/ucd-snmp
	${INSTALL_DATA} ${WRKSRC}/README.snmpv3 ${PREFIX}/share/doc/ucd-snmp
	${INSTALL_DATA} ${WRKSRC}/FAQ ${PREFIX}/share/doc/ucd-snmp
	${INSTALL_DATA} ${WRKSRC}/AGENT.txt ${PREFIX}/share/doc/ucd-snmp
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ucd-snmp
	${INSTALL_DATA} ${WRKSRC}/EXAMPLE.conf \
		${PREFIX}/share/examples/ucd-snmp

.include <bsd.port.mk>
