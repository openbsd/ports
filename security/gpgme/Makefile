# $OpenBSD: Makefile,v 1.56 2019/08/15 18:20:21 phessler Exp $

COMMENT-main =		GnuPG Made Easy
COMMENT-qt =		Qt bindings for GPGme

VERSION =		1.13.1
DISTNAME =		gpgme-${VERSION}
PKGNAME-main =		gpgme-${VERSION}
PKGNAME-qt =		gpgme-qt-${VERSION}
REVISION =		0

CATEGORIES =		security devel

SHARED_LIBS +=  gpgme                22.0     # 33.1
SHARED_LIBS +=  gpgmepp              0.0      # 16.0
SHARED_LIBS +=  qgpgme               0.0      # 10.4

HOMEPAGE =		https://www.gnupg.org/software/gpgme/index.html

MASTER_SITES =		${MASTER_SITE_GNUPG:=gpgme/}
EXTRACT_SUFX =		.tar.bz2

# GPLv2 - LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB = assuan gpg-error iconv intl
WANTLIB-main = ${WANTLIB} c m
WANTLIB-qt = ${COMPILER_LIBCXX} ${WANTLIB} Qt5Core execinfo glib-2.0
WANTLIB-qt += gthread-2.0 icudata icui18n icuuc m pcre pcre2-16 z gpgme

COMPILER =		base-clang ports-gcc

MULTI_PACKAGES =	-main -qt
PSEUDO_FLAVORS =	no_qt
FLAVOR ?=

# don't depend on Qt5 on arches where it's known to fail
NOT_FOR_ARCHS-qt =	alpha mips64 sh

CONFIGURE_STYLE =	gnu

# Requires gpgsm (gnupg 2.x) during build, but can run with any gnupg.
BUILD_DEPENDS =		gnupg->=2:security/gnupg2

# gnupg-* is normally the default anyway, but gnupg1 overrides PKGSPEC
# so we must be explicit here.
RUN_DEPENDS =		gnupg-*:security/gnupg
LIB_DEPENDS-main =	${LIB_DEPENDS:N*qt*} \
			devel/gettext,-runtime \
			security/libgpg-error>=1.4 \
			security/libassuan

CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.arch.mk>

.if ${BUILD_PACKAGES:M-qt}
MODULES +=		x11/qt5
CONFIGURE_ARGS +=	--enable-languages='cpp qt'
CXXFLAGS +=		"-std=c++11"
LIB_DEPENDS-qt +=	${LIB_DEPENDS} \
			gpgme-=${VERSION}:${BUILD_PKGPATH},-main
.else
COMPILER_LANGS =	c
CONFIGURE_ARGS +=	--enable-languages=''
.endif

# needed for the regression tests
USE_GMAKE =		Yes

# The tests target gpg2. Running with gpg version 1 will give:
# `./t-support.h:160: GPGME: Invalid crypto engine'
# https://dev.gnupg.org/T3512
TEST_DEPENDS +=		security/gnupg2
pre-build:
	ln -sf ${LOCALBASE}/bin/gpg2 ${WRKDIR}/bin/gpg

.include <bsd.port.mk>
