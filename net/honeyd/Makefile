# $OpenBSD: Makefile,v 1.22 2009/03/26 11:50:09 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	utility to create virtual hosts on a network
DISTNAME=	honeyd-1.5c
PKGNAME=	${DISTNAME}p3
CATEGORIES=	net
MASTER_SITES=	http://www.citi.umich.edu/u/provos/honeyd/ \
		http://niels.xtdnet.nl/honeyd/

HOMEPAGE=	http://www.honeyd.org/

MAINTAINER=     Rui Reis <rui@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c edit event m ncurses pcap pthread util z

.if ${MACHINE_ARCH} == "sparc64"
PATCH_LIST=	patch-* align-*
.endif

USE_LIBTOOL=	Yes

MODULES=	lang/python
LIB_DEPENDS=	dnet.>=1::net/libdnet \
		${MODPY_LIB_DEPENDS} \
		pcre.>=1::devel/pcre
RUN_DEPENDS=	::net/rrdtool

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	PATH_PYTHON=${MODPY_BIN}
CONFIGURE_ARGS= --with-python

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
