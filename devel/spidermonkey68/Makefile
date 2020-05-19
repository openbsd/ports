# $OpenBSD: Makefile,v 1.2 2020/05/19 07:22:55 ajacoutot Exp $

# see patch-js_src_old-configure_in
USE_WXNEEDED =		Yes

# from spidermonkey38 (may need to be revisited):
# jsapi-tests crashes in js::MarkRangeConservatively() on hppa (SIGSEGV in js/src/jsgc.cpp:1142)
# jsapi-tests crashes in js::Bindings::switchToScriptStorage() on alpha (SIGBUS in jsutil.h:235)
# jsapi-tests crashes in js::Bindings::switchToScriptStorage() on sparc64 & mips64 (SIGBUS in jsutil.h:33)
# but let's keep them to build more packages;
# sync with net/wireshark, x11/gtk+3 and x11/gtk+4
ONLY_FOR_ARCHS =	aarch64 alpha amd64 i386 hppa mips64el mips64 powerpc sparc64

COMMENT =		C/C++ Mozilla's JavaScript engine implementation #'

MOZILLA_VERSION =	68
SUBST_VARS =		MOZILLA_VERSION

V =			${MOZILLA_VERSION}.8.0
DISTNAME =		firefox-${V}esr.source
EXTRACT_SUFX =		.tar.bz2
PKGNAME =		spidermonkey${MOZILLA_VERSION}-${V}
REVISION =		0

SHARED_LIBS =		mozjs-68 0.0

CATEGORIES =		devel

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE =		https://developer.mozilla.org/en-US/docs/Mozilla/Projects/SpiderMonkey
MASTER_SITES =          https://ftp.mozilla.org/pub/firefox/releases/${V}esr/source/
EXTRACT_SUFX =		.tar.xz

# MPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += c curses icudata icui18n icuuc m nspr4 plc4 plds4 z
WANTLIB += ${COMPILER_LIBCXX}

MODULES =		lang/python

MODPY_RUNDEP =		No

# C++11
# sync with SHARED_LIBS consumers: x11/gnome/gjs
COMPILER =		base-clang ports-clang

USE_GMAKE =		yes

LIB_DEPENDS =		devel/nspr \
			textproc/icu4c

DEBUG_PACKAGES =	${BUILD_PACKAGES}

AUTOCONF_VERSION=	2.13
BUILD_DEPENDS +=	devel/autoconf/${AUTOCONF_VERSION} \
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
			--enable-unaligned-private-values \
			--with-libclang-path=${LOCALBASE}/lib \
			--with-clang-path=${LOCALBASE}/bin/clang

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
