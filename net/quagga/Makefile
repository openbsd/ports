COMMENT=	multi-threaded routing daemon

DISTNAME=	quagga-1.2.4
REVISION=	2
CATEGORIES=	net

.for i in ospf ospfapiclient zebra fpm_pb quagga_pb
SHARED_LIBS+=	$i 1.0
.endfor

HOMEPAGE=	https://www.quagga.net/

# GPLv2+
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_SAVANNAH:=quagga/}

WANTLIB += c curses m readline

LOCALSTATEDIR=	${BASELOCALSTATEDIR}/quagga

BUILD_DEPENDS=	lang/gawk

USE_GMAKE=	Yes
SYSCONFDIR=	${BASESYSCONFDIR}/quagga
SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --includedir=${LOCALBASE}/include/quagga \
		--disable-backtrace \
		--enable-user=_quagga \
		--enable-group=_quagga \
		--enable-vty-group=_quagga \
		--enable-vtysh
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
WANTLIB += crypto kvm netsnmp netsnmpagent netsnmpmibs perl
CONFIGURE_ARGS+= --enable-snmp=agentx
.endif

# XXX temporary check to make sure this fails on build machines that aren't
# updated yet
pre-configure:
	@if ! grep -q ip_mreqn /usr/include/netinet/in.h; then echo; \
	    echo "*** Building quagge requires newer base (struct ip_mreqn in netinet/in.h)"; \
	    echo; false; fi

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/quagga
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/quagga
	${INSTALL_DATA} ${WRKSRC}/SERVICES ${PREFIX}/share/doc/quagga
	${INSTALL_DATA} ${WRKSRC}/doc/quagga.info* ${PREFIX}/info
	perl -pi -e 's,^(! *)?log file (/.*/)?,$$1log file /var/log/quagga/,' \
	    ${PREFIX}/share/examples/quagga/*conf*

.include <bsd.port.mk>
