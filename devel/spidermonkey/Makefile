# $OpenBSD: Makefile,v 1.16 2013/08/10 12:41:39 landry Exp $

SHARED_ONLY=	Yes
# based on ffx 17 engine, broken at runtime on sparc64
# jsapi-tests crashes in js::MarkRangeConservatively() on hppa
# some tests crash on mips64 
# but let's keep them to build more packages
# XXX: sync with devel/gconf2, net/libproxy and x11/gtk+3
ONLY_FOR_ARCHS =	alpha amd64 i386 hppa mips64el mips64 powerpc sparc64

COMMENT =	Mozilla C implementation of JavaScript

MOZILLA_VERSION =	17.0
DISTNAME =		mozjs17.0.0
PKGNAME =		spidermonkey-${MOZILLA_VERSION}
PKGSPEC =		spidermonkey->=17.0,<18.0

SO_VERSION =	0.0
SHARED_LIBS =	mozjs-17.0 ${SO_VERSION}
CATEGORIES =	devel

HOMEPAGE =	http://www.mozilla.org/js/spidermonkey/
MASTER_SITES =	http://ftp.mozilla.org/pub/mozilla.org/js/

# MPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m pthread readline nspr4 ncurses plc4 plds4 stdc++ z

VMEM_WARNING =	Yes

MODULES =	lang/python
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
			--enable-threadsafe

CONFIGURE_ENV +=	SO_VERSION="${SO_VERSION}" \
			MOZILLA_VERSION="${MOZILLA_VERSION}" \
			LIBS=-lncurses

.include <bsd.port.mk>
