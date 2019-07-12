# $OpenBSD: Makefile,v 1.43 2019/07/12 20:48:27 sthen Exp $

COMMENT=	utility to create virtual hosts on a network
DISTNAME=	honeyd-1.5c
REVISION=	12
CATEGORIES=	net
MASTER_SITES=	http://www.citi.umich.edu/u/provos/honeyd/ \
		http://niels.xtdnet.nl/honeyd/

HOMEPAGE=	http://www.honeyd.org/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB +=	c edit event m curses pcap pthread util z
WANTLIB +=	${MODPY_WANTLIB} dnet>=1 pcre>=1 eventextra>=1

.if ${MACHINE_ARCH} == "sparc64"
PATCH_LIST=	patch-* align-*
.endif

MODULES=	lang/python
LIB_DEPENDS=	${MODPY_LIB_DEPENDS} \
		devel/libeventextra \
		devel/pcre \
		net/libdnet
RUN_DEPENDS=	net/rrdtool

# only used for tests; if py-libdnet is installed but py-dpkt is not
# installed, build will fail
BUILD_DEPENDS=	net/libdnet,-python \
		net/py-dpkt \
		net/py-libpcap

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	PATH_PYTHON=${MODPY_BIN} \
		LDFLAGS="-L${LOCALBASE}/lib"
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
