# $OpenBSD: Makefile,v 1.11 2005/10/23 08:16:18 aanriot Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"utility to create virtual hosts on a network"
DISTNAME=	honeyd-1.0
PKGNAME=	${DISTNAME}p1
CATEGORIES=	net
MASTER_SITES=	http://www.citi.umich.edu/u/provos/honeyd/ \
		http://niels.xtdnet.nl/honeyd/

HOMEPAGE=	http://www.honeyd.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c edit m ncurses pcap pthread util z

USE_LIBTOOL=	Yes

LIB_DEPENDS=	dnet.1::net/libdnet \
		python2.3.0.0:python-2.3.*:lang/python/2.3
RUN_DEPENDS=	::net/rrdtool

CONFIGURE_STYLE=gnu

SCRIPTS=	INSTALL.kuang2 README.cmdexe README.kuang2 	\
		README.mydoom cmdexe.pl kuang2.conf kuang2.pl 	\
		mydoom.pl proxy.pl router-telnet.pl smtp.pl 	\
		test.sh web.sh
SCRIPTS-snmp=	README buildSNMPConfig.pl default.snmp fake-snmp.pl \
		linux-2.4.snmp.tpl windows2000.snmp.tpl

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/honeyd/scripts/snmp
.for f in ${SCRIPTS}
	${INSTALL_SCRIPT} ${WRKSRC}/scripts/${f} ${PREFIX}/share/honeyd/scripts
.endfor
.for f in ${SCRIPTS-snmp}
	${INSTALL_SCRIPT} ${WRKSRC}/scripts/snmp/${f} \
		${PREFIX}/share/honeyd/scripts/snmp
.endfor

.include <bsd.port.mk>
