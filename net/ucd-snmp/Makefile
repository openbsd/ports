# $OpenBSD: Makefile,v 1.23 2001/01/05 09:19:44 danh Exp $

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
CONFIGURE_ENV+=	VERSION_INFO='42:0:0'
CONFIGURE_ARGS+= ${CONFIGURE_SHARED} \
		 --with-defaults --with-logfile='/var/log/snmpd' \
		 --with-persistent-directory='/var/ucd-snmp' \
		 --with-libwrap='/usr' --with-openssl --with-zlib

post-install:
	-${STRIP} ${PREFIX}/bin/* ${PREFIX}/sbin/*
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ucd-snmp
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/ucd-snmp
	${INSTALL_DATA} ${WRKSRC}/README.snmpv3 ${PREFIX}/share/doc/ucd-snmp
	${INSTALL_DATA} ${WRKSRC}/FAQ ${PREFIX}/share/doc/ucd-snmp
	${INSTALL_DATA} ${WRKSRC}/AGENT.txt ${PREFIX}/share/doc/ucd-snmp
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ucd-snmp
	${INSTALL_DATA} ${WRKSRC}/EXAMPLE.conf \
		${PREFIX}/share/examples/ucd-snmp

.include <bsd.port.mk>
