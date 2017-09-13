# $OpenBSD: Makefile,v 1.7 2017/09/13 11:04:24 ajacoutot Exp $

# XXX: see patches/patch-configure
USE_WXNEEDED =		Yes

# jsapi-tests crashes in js::MarkRangeConservatively() on hppa (SIGSEGV in js/src/jsgc.cpp:1142)
# jsapi-tests crashes in js::Bindings::switchToScriptStorage() on alpha (SIGBUS in jsutil.h:235)
# jsapi-tests crashes in js::Bindings::switchToScriptStorage() on sparc64 & mips64 (SIGBUS in jsutil.h:33)
# but let's keep them to build more packages
ONLY_FOR_ARCHS =	alpha amd64 i386 hppa mips64el mips64 powerpc sparc64

COMMENT =		Mozilla C implementation of JavaScript

MOZILLA_VERSION =	38
REVISION =		1
V =			${MOZILLA_VERSION}.8.0
SUBST_VARS +=		MOZILLA_VERSION

DISTNAME =		firefox-${V}esr.source
EXTRACT_SUFX =		.tar.bz2
PKGNAME =		spidermonkey-${MOZILLA_VERSION}.2.0
PKGSPEC =		spidermonkey->=38.0,<39.0

SO_VERSION =		0.0
SHARED_LIBS =		mozjs-38 ${SO_VERSION}
CATEGORIES =		devel

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE =		https://developer.mozilla.org/en-US/docs/Mozilla/Projects/SpiderMonkey
MASTER_SITES =          https://ftp.mozilla.org/pub/firefox/releases/${V}esr/source/

# MPL
PERMIT_PACKAGE_CDROM=	Yes

MODULES =		lang/python

# sync with games/0ad/base x11/gnome/builder x11/gnome/shell x11/gnome/gjs
COMPILER =		gcc

WANTLIB += c ffi icudata icui18n icuuc m ncurses nspr4 plc4 plds4
WANTLIB += readline z ${COMPILER_LIBCXX}

MODPY_RUNDEP =		No
TEST_DEPENDS =		${MODPY_RUN_DEPENDS}
LIB_DEPENDS =		devel/libffi \
			devel/nspr \
			textproc/icu4c

WRKDIST =		${WRKDIR}/mozilla-esr${MOZILLA_VERSION}/js/src
USE_GMAKE =		yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-pthread \
			--with-intl-api \
			--with-system-icu \
			--with-system-zlib \
			--with-system-nspr \
			--enable-readline \
			--enable-ctypes \
			--enable-system-ffi \
			--disable-optimize \
			--enable-threadsafe

CONFIGURE_ENV +=	SO_VERSION="${SO_VERSION}" \
			MOZILLA_VERSION="${MOZILLA_VERSION}" \
			LIBS=-lncurses

# XXX: No patch as it's outside of WRKSRC and changing that is more invasive
#      This prevents header symlinks to point into WRKSRC after installation.
#      Based on Arch Linux' mozjs38-copy-headers.patch
post-extract:
	sed -i -E "s,(_install_manifests\['dist_include'\]).add_symlink,\1.add_copy," \
		${WRKSRC}/../../python/mozbuild/mozbuild/backend/recursivemake.py

post-install:
# Fixup some missing MOZILLA_VERSION annotations
	mv ${PREFIX}/bin/js{,${MOZILLA_VERSION}}
	mv ${PREFIX}/bin/js-config{,${MOZILLA_VERSION}}
	mv ${PREFIX}/lib/libjs_static.ajs ${PREFIX}/lib/libjs${MOZILLA_VERSION}_static.ajs
	mv ${PREFIX}/lib/pkgconfig/js.pc ${PREFIX}/lib/pkgconfig/mozjs-${MOZILLA_VERSION}.pc
.ifndef DEBUG
	${STRIP} ${PREFIX}/bin/js${MOZILLA_VERSION}
	${STRIP} ${PREFIX}/lib/libmozjs-${MOZILLA_VERSION}.so.${LIBmozjs-38_VERSION}
.endif

.include <bsd.port.mk>
