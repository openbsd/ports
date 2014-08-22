# $OpenBSD: Makefile,v 1.29 2014/08/22 20:32:13 sthen Exp $

COMMENT=	Berkeley Internet Name Daemon: DNS server and tools

V=		9.10.0-P2
REVISION=	0
DISTNAME=	bind-$V
PKGNAME=	isc-bind-${V:S/-P/pl/}

SHARED_LIBS +=	isc                  1.0      # 143.1
SHARED_LIBS +=	isccc                0.0      # 140.1
SHARED_LIBS +=	dns                  1.0      # 144.1
SHARED_LIBS +=	isccfg               0.2      # 142.0
SHARED_LIBS +=	bind9                0.0      # 140.4
SHARED_LIBS +=	lwres                0.0      # 140.1
SHARED_LIBS +=	irs                  0.0      # 141.1

# not installed:
#SHARED_LIBS +=	isc-nosymtbl         0.0      # 143.1
#SHARED_LIBS +=	t_api                0.0      # unknown

CATEGORIES=	net

HOMEPAGE=	http://www.isc.org/software/bind

# ISC
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c crypto m pthread xml2 z

MASTER_SITES=	${MASTER_SITE_ISC:=bind9/$V/}

MODULES=	converters/libiconv \
		lang/python
# used for dnssec-checkds/dnssec-coverage, but don't want to force the run dep.
MODPY_RUNDEP=	No
LIB_DEPENDS=	textproc/libxml

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-newstats \
		--enable-threads \
		--with-libtool \
		--with-python=${MODPY_BIN}

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
