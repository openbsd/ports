# $OpenBSD: Makefile,v 1.3 2012/07/07 22:46:19 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT =	Mozilla C implementation of JavaScript

MOZILLA_VERSION =	1.8.5
DISTNAME =		js185-1.0.0
PKGNAME =		spidermonkey-${MOZILLA_VERSION}
PKGSPEC =		spidermonkey->=1.8,<1.9
REVISION =		1

SO_VERSION =	0.0
SHARED_LIBS =	mozjs185 ${SO_VERSION}
CATEGORIES =	devel

HOMEPAGE =	http://www.mozilla.org/js/spidermonkey/
MASTER_SITES =	http://ftp.mozilla.org/pub/mozilla.org/js/

# MPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

.if ${MACHINE_ARCH} == "i386"
PKG_ARGS+=	-Djit=1 -Damd64=0
.elif ${MACHINE_ARCH} == "amd64"
PKG_ARGS+=	-Djit=1 -Damd64=1
.else
PKG_ARGS+=	-Djit=0 -Damd64=0
.endif

MODULES =	lang/python
MODPY_RUNDEP =	No
REGRESS_DEPENDS = ${MODPY_RUN_DEPENDS}
BUILD_DEPENDS =	archivers/zip
LIB_DEPENDS =	devel/nspr
WANTLIB =	c m pthread readline nspr4 ncurses plc4 plds4 stdc++

SUBST_VARS +=	MOZILLA_VERSION

WRKDIST =	${WRKDIR}/js-${MOZILLA_VERSION}/js/src
USE_GMAKE =	yes
CONFIGURE_STYLE =	autoconf no-autoheader
CONFIGURE_ARGS =	--with-pthread \
			--with-system-nspr \
			--enable-readline \
			--enable-ctypes \
			--enable-threadsafe

CONFIGURE_ENV +=	SO_VERSION="${SO_VERSION}" \
			MOZILLA_VERSION="${MOZILLA_VERSION}" \
			LIBS=-lncurses

.include <bsd.port.mk>
