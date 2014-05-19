# $OpenBSD: Makefile,v 1.23 2014/05/19 10:28:39 ajacoutot Exp $

SHARED_ONLY=	Yes
# based on ffx 24 engine
# jsapi-tests crashes in js::MarkRangeConservatively() on hppa (SIGSEGV in js/src/jsgc.cpp:1142)
# jsapi-tests crashes in js::Bindings::switchToScriptStorage() on alpha (SIGBUS in jsutil.h:235)
# jsapi-tests crashes in js::Bindings::switchToScriptStorage() on sparc64 & mips64 (SIGBUS in jsutil.h:33)
# but let's keep them to build more packages
# XXX: sync with net/libproxy and x11/gtk+3
ONLY_FOR_ARCHS =	alpha amd64 i386 hppa mips64el mips64 powerpc sparc64

COMMENT =	Mozilla C implementation of JavaScript

MOZILLA_VERSION =	24
DISTNAME =		mozjs-${MOZILLA_VERSION}.2.0
PKGNAME =		spidermonkey-${MOZILLA_VERSION}.2.0
PKGSPEC =		spidermonkey->=24.0,<25.0
REVISION =		0

SO_VERSION =	0.0
SHARED_LIBS =	mozjs-24 ${SO_VERSION}
CATEGORIES =	devel

HOMEPAGE =	http://www.mozilla.org/js/spidermonkey/
MASTER_SITES =	http://ftp.mozilla.org/pub/mozilla.org/js/
#https://groups.google.com/forum/#!topic/mozilla.dev.tech.js-engine/h6pw_gCCsfU
EXTRACT_SUFX=	.tar.bz2 
# MPL
PERMIT_PACKAGE_CDROM=	Yes

MODULES =	lang/python
# necessary glue to build with the correct compiler after fx 17
# sync with x11/gnome/gjs and x11/gnome/shell
MODULES +=		gcc4 lang/clang
MODGCC4_ARCHS =		powerpc sparc64 alpha i386
MODGCC4_LANGS =		c c++
MODCLANG_ARCHS =	amd64
MODCLANG_LANGS =	c c++

WANTLIB += c m pthread readline nspr4 ncurses plc4 plds4 stdc++ z

MODPY_RUNDEP =	No
TEST_DEPENDS = ${MODPY_RUN_DEPENDS}
LIB_DEPENDS =	devel/nspr

SUBST_VARS +=	MOZILLA_VERSION

WRKDIST =	${WRKDIR}/${DISTNAME}/js/src
USE_GMAKE =	yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-pthread \
			--with-system-nspr \
			--enable-readline \
			--enable-ctypes \
			--disable-intl-api \
			--enable-threadsafe

CONFIGURE_ENV +=	SO_VERSION="${SO_VERSION}" \
			MOZILLA_VERSION="${MOZILLA_VERSION}" \
			LIBS=-lncurses

post-install:
	rm ${PREFIX}/lib/libmozjs-${MOZILLA_VERSION}.a
.ifndef DEBUG
	${STRIP} ${PREFIX}/bin/js${MOZILLA_VERSION}
	${STRIP} ${PREFIX}/lib/libmozjs-${MOZILLA_VERSION}.so.${LIBmozjs-24_VERSION}
.endif

.include <bsd.port.mk>
