BROKEN-sparc64=	build-script-build (signal: 11, SIGSEGV: invalid memory reference)

COMMENT=	virus scanner
V=		1.5.1
DISTNAME=	clamav-$V
PKGNAME=	clamav-${V:S/-rc/rc/}
REVISION=	0

CATEGORIES=	security

SHARED_LIBS +=	clamav               30.0
SHARED_LIBS +=	clamunrar            30.0
SHARED_LIBS +=	clamunrar_iface      30.0
SHARED_LIBS +=	freshclam            30.0

HOMEPAGE=	https://www.clamav.net/
SITES=		https://www.clamav.net/downloads/production/ \
		https://github.com/Cisco-Talos/clamav/releases/download/clamav-$V/

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# GPLv2/LGPL, with OpenSSL exemption
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} ${MODRUST_WANTLIB}
WANTLIB += bz2 crypto curl curses execinfo iconv json-c m milter
WANTLIB += mspack pcre2-8 ssl util xml2 z

COMPILER=	base-clang ports-gcc

LIB_DEPENDS=	archivers/bzip2 \
		archivers/libmspack \
		devel/json-c \
		devel/pcre2 \
		mail/sendmail,-libmilter \
		net/curl \
		textproc/libxml
TEST_DEPENDS=	security/clamav

MODULES=	devel/cmake \
		lang/rust
CONFIGURE_ARGS=	-D CLAMAV_USER=_clamav \
		-D CLAMAV_GROUP=_clamav \
		-D ENABLE_EXTERNAL_MSPACK=ON \
		-D DATABASE_DIRECTORY=/var/db/clamav \
		-D APP_CONFIG_DIRECTORY=${SYSCONFDIR} \
		-D CVD_CERTS_DIRECTORY=${SYSCONFDIR}/clamav-certs \
		-D CMAKE_INSTALL_DOCDIR=${PREFIX}/share/doc/clamav

# the LLVM bytecode runtime uses W+X-maps (and often doesn't support
# current LLVM versions anyway)
CONFIGURE_ARGS += -D BYTECODE_RUNTIME=interpreter

# for tests
MODULES+=	lang/python
MODPY_RUNDEP=	No
BUILD_DEPENDS+=	devel/check
CONFIGURE_ARGS+= -D ENABLE_TESTS=on

pre-build:
	@echo note, some build steps use rustc and are run silently, build may appear to hang
	sed -i 's/"files":{[^}]*}/"files":{}/' ${WRKSRC}/.cargo/vendor/openssl-sys/.cargo-checksum.json

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/clamav
	mv ${WRKINST}/etc/*sample ${PREFIX}/share/examples/clamav
	mv ${WRKINST}/etc/clamav-certs ${PREFIX}/share/examples/clamav/certs

.include <bsd.port.mk>
