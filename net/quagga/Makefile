# $OpenBSD: Makefile,v 1.54 2017/11/03 14:28:43 sthen Exp $

COMMENT=	multi-threaded routing daemon

DISTNAME=	quagga-1.2.2
CATEGORIES=	net
MASTER_SITES=	http://download.savannah.gnu.org/releases/quagga/

.for i in ospf ospfapiclient zebra fpm_pb quagga_pb
SHARED_LIBS+=	$i 1.0
.endfor

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
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.69
CONFIGURE_ARGS+= --includedir=${LOCALBASE}/include/quagga \
		--enable-user=_quagga \
		--enable-group=_quagga \
		--enable-vty-group=_quagga \
		--enable-vtysh
# trust the compiler to use PIE by default where supported.
CONFIGURE_ARGS+= --disable-pie
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		LIBS=-lcurses
MAKE_FLAGS=	MAKEINFO="makeinfo --no-split"
FAKE_FLAGS=	exampledir='${PREFIX}/share/examples/quagga' \
		${MAKE_FLAGS}
LIBTOOL_FLAGS=	--tag=disable-static

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
