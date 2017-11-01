# $OpenBSD: Makefile,v 1.4 2017/11/01 17:22:33 ajacoutot Exp $

# see patch-js_src_old-configure_in
USE_WXNEEDED =		Yes

# from spidermonkey38 (may need to be revisited):
# jsapi-tests crashes in js::MarkRangeConservatively() on hppa (SIGSEGV in js/src/jsgc.cpp:1142)
# jsapi-tests crashes in js::Bindings::switchToScriptStorage() on alpha (SIGBUS in jsutil.h:235)
# jsapi-tests crashes in js::Bindings::switchToScriptStorage() on sparc64 & mips64 (SIGBUS in jsutil.h:33)
# but let's keep them to build more packages
ONLY_FOR_ARCHS =	alpha amd64 i386 hppa mips64el mips64 powerpc sparc64

COMMENT =		C/C++ Mozilla's JavaScript engine implementation #'

MOZILLA_VERSION =	52
SUBST_VARS =		MOZILLA_VERSION

V =			${MOZILLA_VERSION}.4.0
DISTNAME =		firefox-${V}esr.source
EXTRACT_SUFX =		.tar.bz2
PKGNAME =		spidermonkey-${MOZILLA_VERSION}.4.0
PKGSPEC =		spidermonkey->=52.0,<53.0
REVISION =		0

SHARED_LIBS =		mozjs-52 0.0

CATEGORIES =		devel

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE =		https://developer.mozilla.org/en-US/docs/Mozilla/Projects/SpiderMonkey
MASTER_SITES =          https://ftp.mozilla.org/pub/firefox/releases/${V}esr/source/
EXTRACT_SUFX =		.tar.xz

# MPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c ffi icudata icui18n icuuc m ncurses nspr4 plc4 plds4
WANTLIB += readline z ${COMPILER_LIBCXX}

MODULES =		lang/python

MODPY_RUNDEP =		No

# C++11
# XXX GNOME 3.26:
# sync with x11/gnome/builder x11/gnome/shell x11/gnome/gjs
COMPILER =		base-clang ports-clang ports-gcc

USE_GMAKE =		yes

LIB_DEPENDS =		devel/libffi \
			devel/nspr \
			textproc/icu4c

AUTOCONF_VERSION=	2.13
BUILD_DEPENDS +=	devel/autoconf/${AUTOCONF_VERSION}

WRKDIST =		${WRKDIR}/firefox-${V}esr
WRKSRC =		${WRKDIST}/js/src

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS = 	--with-intl-api \
			--with-system-icu \
			--with-system-zlib \
			--with-system-nspr \
			--enable-readline \
			--enable-ctypes \
			--enable-system-ffi \
			--disable-optimize \
			--disable-jemalloc

CONFIGURE_ENV =		LIBS=-lncurses \
			SHELL=/bin/sh \
			SO_VERSION="${LIBmozjs-${MOZILLA_VERSION}_VERSION}"

MAKE_ENV =		SHELL=/bin/sh

pre-configure:
	cd ${WRKSRC} && env -i AUTOCONF_VERSION=${AUTOCONF_VERSION} autoconf

post-install:
# 416M! 
	rm ${PREFIX}/lib/libjs_static.ajs

.ifndef DEBUG
	${STRIP} ${PREFIX}/bin/js${MOZILLA_VERSION}
	${STRIP} ${PREFIX}/lib/libmozjs-${MOZILLA_VERSION}.so.${LIBmozjs-${MOZILLA_VERSION}_VERSION}
.endif

do-test:
	cd ${WRKSRC} && ${MAKE_PROGRAM} check-jstests

.include <bsd.port.mk>
