# see patch-js_src_old-configure_in
USE_WXNEEDED =		Yes

ONLY_FOR_ARCHS =	${RUST_ARCHS}

COMMENT =		C/C++ Mozilla's JavaScript engine implementation #'

MOZILLA_VERSION =	115
SUBST_VARS =		MOZILLA_VERSION

SO_VERSION =		${LIBmozjs-${MOZILLA_VERSION}_VERSION}
SUBST_VARS +=		SO_VERSION

V =			${MOZILLA_VERSION}.14.0
DISTNAME =		firefox-${V}esr.source
PKGNAME =		spidermonkey${MOZILLA_VERSION}-${V}
EPOCH =			1

SHARED_LIBS =		mozjs-115 0.0

CATEGORIES =		devel

MAINTAINER =		Antoine Jacoutot <ajacoutot@openbsd.org>

HOMEPAGE =		https://spidermonkey.dev/
SITES =			https://ftp.mozilla.org/pub/firefox/releases/${V}esr/source/
EXTRACT_SUFX =		.tar.xz

# MPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += curses ffi icudata icui18n icuuc m nspr4 plc4 plds4 z
WANTLIB += ${COMPILER_LIBCXX} ${MODRUST_WANTLIB}

MODULES =		lang/python \
			lang/rust

MODPY_RUNDEP =		No

# C++11
COMPILER =		base-clang ports-gcc

USE_GMAKE =		yes

LIB_DEPENDS =		devel/libffi \
			devel/nspr \
			textproc/icu4c

DEBUG_PACKAGES =	${BUILD_PACKAGES}

BUILD_DEPENDS =		devel/cbindgen

SEPARATE_BUILD =	Yes
WRKDIST =		${WRKDIR}/firefox-${V}
WRKSRC =		${WRKDIST}/js/src

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS = 	--disable-debug \
			--disable-debug-symbols \
			--disable-jemalloc \
			--disable-strip \
			--disable-optimize \
			--enable-ctypes \
			--enable-readline \
			--enable-release \
			--enable-shared-js \
			--disable-tests \
			--with-intl-api \
			--with-system-zlib \
			--with-system-icu \
			--with-system-nspr \
			--with-system-ffi

# Build failure on mips64(,el}. Related bug on Debian:
# https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=908486
# error: no matching function for call to 'js::jit::LInstructionHelper<1, 1, 0>::LInstructionHelper()'
.if ${MACHINE_ARCH} == "mips64" || ${MACHINE_ARCH} == "mips64el"
CONFIGURE_ARGS +=	--disable-ion
.endif

CONFIGURE_ENV =		LIBS=-lncurses \
			SHELL=/bin/sh \
			SO_VERSION=${SO_VERSION}

# Autoconf requires GNU m4 1.1 or later
CONFIGURE_ENV +=	M4=/usr/local/bin/gm4
BUILD_DEPENDS +=	devel/m4

MAKE_ENV =		SHELL=/bin/sh \
			SO_VERSION=${SO_VERSION}

NO_TEST =		Yes

post-patch:
	sed -i 's/"files":{[^}]*}/"files":{}/' \
		${WRKDIST}/third_party/rust/*/.cargo-checksum.json

pre-configure:
	${SUBST_CMD} ${WRKSRC}/build/moz.build

post-install:
	rm ${PREFIX}/lib/libjs_static.ajs

.include <bsd.port.mk>
