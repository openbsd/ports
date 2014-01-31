# $OpenBSD: Makefile,v 1.23 2014/01/31 10:12:57 sthen Exp $

COMMENT=	Berkeley Internet Name Daemon: DNS server and tools

V=		9.9.5
DISTNAME=	bind-$V
PKGNAME=	isc-bind-${V:S/-P/pl/}

SHARED_LIBS +=  bind9                     0.0 # 90.8
SHARED_LIBS +=  dns                       0.1 # 101.1
SHARED_LIBS +=  isc                       0.2 # 97.1
SHARED_LIBS +=  isccc                     0.0 # 90.4
SHARED_LIBS +=  isccfg                    0.1 # 90.7
SHARED_LIBS +=  lwres                     0.0 # 90.5

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
SUBST_VARS=	LOCALSTATEDIR

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-newstats \
		--enable-threads \
		--with-libtool \
		--with-python=${MODPY_BIN}

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/bind9

# not strictly speaking interactive, but it configures temporary addresses on
# lo0 as root, so let's try and avoid running it unintentionally
TEST_IS_INTERACTIVE= Yes

pre-test:
	cd ${WRKSRC}/bin/tests/system && ${SUDO} ./ifconfig.sh up

post-test:
	cd ${WRKSRC}/bin/tests/system && ${SUDO} ./ifconfig.sh down

.include <bsd.port.mk>
