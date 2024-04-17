BROKEN-sparc64=	build-script-build (signal: 11, SIGSEGV: invalid memory reference)

COMMENT=	virus scanner
V=		1.3.1
DISTNAME=	clamav-$V

CATEGORIES=	security

SHARED_LIBS +=	clamav               29.0
SHARED_LIBS +=	clamunrar            7.0
SHARED_LIBS +=	clamunrar_iface      6.0
SHARED_LIBS +=	freshclam            3.0

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
CONFIGURE_ARGS=	-DCLAMAV_USER=_clamav \
		-DCLAMAV_GROUP=_clamav \
		-DENABLE_EXTERNAL_MSPACK=ON \
		-DDATABASE_DIRECTORY=/var/db/clamav \
		-DAPP_CONFIG_DIRECTORY=${SYSCONFDIR} \
		-DCMAKE_INSTALL_DOCDIR=${PREFIX}/share/doc/clamav

# the LLVM bytecode runtime uses W+X-maps (and often doesn't support
# current LLVM versions anyway)
CONFIGURE_ARGS += -DBYTECODE_RUNTIME=interpreter

# for tests
MODULES+=	lang/python
MODPY_RUNDEP=	No
BUILD_DEPENDS+=	devel/check
CONFIGURE_ARGS+= -DENABLE_TESTS=on

pre-build:
	@echo note, first build steps use rustc and are run silently, build may appear to hang

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/clamav
	mv ${WRKINST}/etc/*sample ${PREFIX}/share/examples/clamav

.include <bsd.port.mk>
