# $OpenBSD: Makefile,v 1.41 2014/06/27 00:06:42 sthen Exp $

COMMENT=	multi-threaded routing daemon

DISTNAME=	quagga-0.99.23
CATEGORIES=	net
MASTER_SITES=	http://download.savannah.gnu.org/releases/quagga/
EXTRACT_SUFX=	.tar.xz

SHARED_LIBS=	ospf		0.1 \
		ospfapiclient	0.0 \
		zebra		1.0

HOMEPAGE=	http://www.quagga.net/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c curses execinfo m readline termcap

LOCALSTATEDIR=	${BASELOCALSTATEDIR}/quagga

BUILD_DEPENDS=	lang/gawk
LIB_DEPENDS=	devel/libexecinfo

USE_GMAKE=	Yes
SYSCONFDIR=	${BASESYSCONFDIR}/quagga
SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --includedir=${LOCALBASE}/include/quagga \
		--enable-user=_quagga \
		--enable-group=_quagga \
		--enable-vty-group=_quagga \
		--enable-vtysh
.if ${MACHINE_ARCH:Marm}
CONFIGURE_ARGS+= --disable-pie
.endif
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		LIBS=-lcurses

MAKE_FLAGS=	MAKEINFO="makeinfo --no-split"
FAKE_FLAGS=	exampledir='${PREFIX}/share/examples/quagga' \
		${MAKE_FLAGS}

FLAVORS=	snmp
FLAVOR?=

.if ${FLAVOR:Msnmp}
LIB_DEPENDS+=	net/net-snmp
WANTLIB += crypto kvm netsnmp netsnmpagent netsnmpmibs perl util
CONFIGURE_ARGS+= --enable-snmp=agentx
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/quagga
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/quagga
	${INSTALL_DATA} ${WRKSRC}/SERVICES ${PREFIX}/share/doc/quagga
	${INSTALL_DATA} ${WRKSRC}/doc/quagga.info* ${PREFIX}/info
	perl -pi -e 's,^(! *)?log file (/.*/)?,$$1log file /var/log/quagga/,' \
	    ${PREFIX}/share/examples/quagga/*conf*

.include <bsd.port.mk>
