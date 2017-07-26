# $OpenBSD: Makefile,v 1.34 2017/07/26 22:45:25 sthen Exp $

# old version that does not get updates; should be rm'd at some point
PORTROACH=	ignore:1

COMMENT =	Mozilla C implementation of JavaScript

MOZILLA_VERSION =	1.9.2.28
FFX_VERSION =	3.6.28
MOZILLA_BRANCH =	1.9.2
MOZILLA_PROJECT =	spidermonkey
DISTNAME =		firefox-${FFX_VERSION}.source
PKGNAME =	${MOZILLA_PROJECT}-${MOZILLA_VERSION}
PKGSPEC =	spidermonkey->=1.9v0,<1.10v0
EPOCH =		0
REVISION =	4

SO_VERSION =	0.0
SHARED_LIBS =	mozjs ${SO_VERSION}
CATEGORIES =	lang

# MPL
PERMIT_PACKAGE_CDROM=	Yes

.if ${MACHINE_ARCH} == "i386"
PKG_ARGS+=	-Djit=1 -Damd64=0
.elif ${MACHINE_ARCH} == "amd64"
PKG_ARGS+=	-Djit=1 -Damd64=1
.else
PKG_ARGS+=	-Djit=0 -Damd64=0
.endif

HOMEPAGE =	https://developer.mozilla.org/en-US/docs/Mozilla/Projects/SpiderMonkey

MASTER_SITES =	http://releases.mozilla.org/pub/mozilla.org/firefox/releases/${FFX_VERSION}/source/
EXTRACT_SUFX =	.tar.bz2

PATCH_STRIP =	-p2

MODULES =	lang/python
MODPY_RUNDEP =	No
BUILD_DEPENDS =	archivers/zip archivers/unzip
LIB_DEPENDS =	devel/nspr
WANTLIB =	c m pthread readline nspr4 ncurses plc4 plds4 ${COMPILER_LIBCXX}

WRKDIST =	${WRKDIR}/mozilla-${MOZILLA_BRANCH}/js/src
USE_GMAKE =	yes
CONFIGURE_STYLE =	autoconf no-autoheader
CONFIGURE_ARGS =	--with-pthreads \
			--with-system-nspr \
			--disable-optimize \
			--enable-readline \
			--enable-ctypes \
			--enable-threadsafe

.if ${MACHINE_ARCH} == "arm"
MD_LIBS += -larm
.endif
CONFIGURE_ENV +=	SO_VERSION="${SO_VERSION}" \
			LIBS="-lncurses ${MD_LIBS}" \
			MOZILLA_VERSION="${MOZILLA_VERSION}" \
			CPPFLAGS=-DJS_C_STRINGS_ARE_UTF8


SUBST_VARS +=	MOZILLA_VERSION

post-install:
	${INSTALL_PROGRAM} ${WRKSRC}/js ${PREFIX}/bin/
	# There is a mozilla-js.pc in the tarball, but it's not initialized
	# as part of the build. This file is based on that.
	${INSTALL_DATA_DIR} ${PREFIX}/lib/pkgconfig/
	${SUBST_DATA} ${FILESDIR}/mozilla-js.pc \
		${PREFIX}/lib/pkgconfig/mozilla-js.pc

.include <bsd.port.mk>
