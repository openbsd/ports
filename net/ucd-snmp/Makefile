# $OpenBSD: Makefile,v 1.3 1999/10/29 09:40:16 turan Exp $
#

DISTNAME=	ucd-snmp-3.6.2
CATEGORIES=	net
MASTER_SITES= 	ftp://ucd-snmp.ucdavis.edu/				\
		ftp://sunsite.cnlab-switch.ch/mirror/ucd-snmp/

MAINTAINER=	hugh@openbsd.org


GNU_CONFIGURE=	yes
.if defined(PACKAGE_BUILDING)
CONFIGURE_ARGS=	--with-defaults --with-sys-contact=nobody@no.where --with-logfile="/var/log/snmpd"
.else
IS_INTERACTIVE= yes
NO_PACKAGE=	interactive port
CONFIGURE_ARGS=	--with-logfile="/var/log/snmpd"
.endif

MAN1=		snmpbulkwalk.1 snmpcmd.1 snmpd.1 snmpdelta.1 snmpget.1	\
		snmpgetnext.1 snmpnetstat.1 snmpset.1 snmpstatus.1	\
		snmptable.1 snmptest.1 snmptranslate.1 snmptrap.1	\
		snmpwalk.1
MAN3=		mib_api.3 read_config.3 snmp_api.3 snmp_sess_api.3
MAN5=		
MAN5=		snmp.conf.5 snmp_config.5 snmpd.conf.5			\
		snmptrapd.conf.5 variables.5
MAN8=		snmptrapd.8
BIN=		snmpbulkwalk snmpget snmpgetnext snmpnetstat snmpset	\
		snmpstatus snmptest snmptranslate snmptrap snmpwalk
SBIN=		snmpd snmptrapd

post-install:
	( cd ${PREFIX}/bin; strip ${BIN} )
	( cd ${PREFIX}/sbin; strip ${SBIN} )
	@${MKDIR} ${PREFIX}/share/examples/ucd-snmp
	@for F in ${WRKSRC}/etc/* ; do \
		${INSTALL_DATA} $$F ${PREFIX}/share/examples/ucd-snmp ; done

.include <bsd.port.mk>
