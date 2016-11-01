# $OpenBSD: Makefile,v 1.62 2016/11/01 21:02:03 sthen Exp $

COMMENT=	Berkeley Internet Name Daemon: DNS server and tools

V=		9.10.4-P4
DISTNAME=	bind-$V
PKGNAME=	isc-bind-${V:S/-P/pl/}

SHARED_LIBS +=	isc                  3.2      # 161.1
SHARED_LIBS +=	isccc                0.0      # 140.4
SHARED_LIBS +=	dns                  4.4      # 164.3
SHARED_LIBS +=	isccfg               0.4      # 143.1
SHARED_LIBS +=	bind9                0.1      # 140.11
SHARED_LIBS +=	lwres                0.1      # 141.3
SHARED_LIBS +=	irs                  0.0      # 141.4

# not installed:
#SHARED_LIBS +=	isc-nosymtbl         148.2    # 148.2
#SHARED_LIBS +=	t_api                0.0      # unknown

CATEGORIES=	net

HOMEPAGE=	http://www.isc.org/software/bind

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# ISC
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c iconv json-c lzma m pthread xml2 z

MASTER_SITES=	${MASTER_SITE_ISC:=bind9/$V/}

MODULES=	lang/python
# used for dnssec-checkds/dnssec-coverage, but don't want to force the run dep.
MODPY_RUNDEP=	No
LIB_DEPENDS=	converters/libiconv \
		devel/json-c \
		textproc/libxml

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--enable-filter-aaaa \
		--enable-threads \
		--with-libtool \
		--without-readline \
		--with-python=${MODPY_BIN}

CONFIGURE_ENV=	STD_CDEFINES="-DDIG_SIGCHASE=1"

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/bind9

FLAVORS=	geoip no_ssl
FLAVOR?=
.if ${FLAVOR:Mgeoip}
CONFIGURE_ARGS+= --with-geoip
LIB_DEPENDS+=	net/GeoIP
WANTLIB+=	GeoIP
.endif

.if ${FLAVOR:Mno_ssl}
CONFIGURE_ARGS+= --without-openssl
.else
WANTLIB+=	crypto
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
