# $OpenBSD: Makefile,v 1.17 2022/01/29 13:19:22 daniel Exp $

# see patch-js_src_old-configure_in
USE_WXNEEDED =		Yes

ONLY_FOR_ARCHS =	${RUST_ARCHS}

COMMENT =		C/C++ Mozilla's JavaScript engine implementation #'

MOZILLA_VERSION =	78
SUBST_VARS =		MOZILLA_VERSION

V =			${MOZILLA_VERSION}.15.0
DISTNAME =		firefox-${V}esr.source
EXTRACT_SUFX =		.tar.bz2
PKGNAME =		spidermonkey${MOZILLA_VERSION}-${V}
EPOCH =			1
REVISION =		0

SHARED_LIBS =		mozjs-78 0.0

CATEGORIES =		devel

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE =		https://spidermonkey.dev/
MASTER_SITES =          https://ftp.mozilla.org/pub/firefox/releases/${V}esr/source/
EXTRACT_SUFX =		.tar.xz

# MPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += curses ffi icudata icui18n icuuc m nspr4 plc4 plds4 z
WANTLIB += ${COMPILER_LIBCXX}

MODULES =		lang/python

MODPY_RUNDEP =		No

# C++11
COMPILER =		base-clang ports-gcc

USE_GMAKE =		yes

LIB_DEPENDS =		devel/libffi \
			devel/nspr \
			textproc/icu4c

DEBUG_PACKAGES =	${BUILD_PACKAGES}

AUTOCONF_VERSION=	2.13
BUILD_DEPENDS +=	devel/autoconf/${AUTOCONF_VERSION} \
			devel/cbindgen \
			devel/llvm \
			lang/rust

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

SO_VERSION =		${LIBmozjs-${MOZILLA_VERSION}_VERSION}
SUBST_VARS +=		SO_VERSION

CONFIGURE_ENV =		LIBS=-lncurses \
			SHELL=/bin/sh \
			SO_VERSION=${SO_VERSION}

MAKE_ENV =		SHELL=/bin/sh \
			SO_VERSION=${SO_VERSION}

NO_TEST =		Yes

pre-configure:
	cd ${WRKSRC} && env -i AUTOCONF_VERSION=${AUTOCONF_VERSION} autoconf
	${SUBST_CMD} ${WRKSRC}/build/moz.build

post-install:
	rm ${PREFIX}/lib/libjs_static.ajs

.include <bsd.port.mk>
