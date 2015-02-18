# $OpenBSD: Makefile,v 1.37 2015/02/18 22:49:44 sthen Exp $

COMMENT=	Berkeley Internet Name Daemon: DNS server and tools

V=		9.10.1-P2
DISTNAME=	bind-$V
PKGNAME=	isc-bind-${V:S/-P/pl/}

SHARED_LIBS +=	isc                  2.0      # 146.0
SHARED_LIBS +=	isccc                0.0      # 140.1
SHARED_LIBS +=	dns                  4.0      # 147.0
SHARED_LIBS +=	isccfg               0.3      # 142.3
SHARED_LIBS +=	bind9                0.1      # 140.7
SHARED_LIBS +=	lwres                0.1      # 141.0
SHARED_LIBS +=	irs                  0.0      # 141.2

# not installed:
#SHARED_LIBS +=	isc-nosymtbl         0.0      # 146.0
#SHARED_LIBS +=	t_api                0.0      # unknown

CATEGORIES=	net

HOMEPAGE=	http://www.isc.org/software/bind

# ISC
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c crypto lzma m pthread xml2 z

MASTER_SITES=	${MASTER_SITE_ISC:=bind9/$V/}

MODULES=	converters/libiconv \
		lang/python
# used for dnssec-checkds/dnssec-coverage, but don't want to force the run dep.
MODPY_RUNDEP=	No
LIB_DEPENDS=	textproc/libxml

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-threads \
		--with-libtool \
		--with-python=${MODPY_BIN}

# JSON stats support is built if json-c is found at build time; however this
# breaks on hppa, so it's forcibly disabled at this time.
CONFIGURE_ARGS+= --without-libjson

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/bind9

FLAVORS=	geoip
FLAVOR?=
.if ${FLAVOR:Mgeoip}
CONFIGURE_ARGS+= --with-geoip
LIB_DEPENDS+=	net/GeoIP
WANTLIB+=	GeoIP
.endif

# not strictly speaking interactive, but it configures temporary addresses on
# lo0 as root, so let's try and avoid running it unintentionally
TEST_IS_INTERACTIVE= Yes

pre-test:
	cd ${WRKSRC}/bin/tests/system && ${SUDO} ./ifconfig.sh up

post-test:
	cd ${WRKSRC}/bin/tests/system && ${SUDO} ./ifconfig.sh down

post-install:
	cd ${FILESDIR}; ${INSTALL_DATA} localhost loopback loopback6.arpa \
	    named.conf root.hint ${PREFIX}/share/examples/bind9/

.include <bsd.port.mk>
