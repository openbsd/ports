# $OpenBSD: Makefile,v 1.41 2018/04/14 09:56:20 rsadowski Exp $

COMMENT-main =		GnuPG Made Easy
COMMENT-qt =		Qt bindings for GPGme

VERSION =		1.10.0
DISTNAME =		gpgme-${VERSION}
PKGNAME-main =		gpgme-${VERSION}
PKGNAME-qt =		gpgme-qt-${VERSION}

CATEGORIES =		security devel

SHARED_LIBS +=  gpgme                     21.0# 29.0
SHARED_LIBS +=  gpgmepp                   0.0 # 11.0
SHARED_LIBS +=  qgpgme                    0.0 # 10.0

HOMEPAGE =		https://www.gnupg.org/software/gpgme/index.html

MASTER_SITES =		${MASTER_SITE_GNUPG:=gpgme/}
EXTRACT_SUFX =		.tar.bz2

# GPLv2 - LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB = assuan gpg-error iconv intl
WANTLIB-main = ${WANTLIB} c
WANTLIB-qt = ${COMPILER_LIBCXX} ${WANTLIB} Qt5Core execinfo glib-2.0
WANTLIB-qt += gthread-2.0 icudata icui18n icuuc m pcre pcre2-16 z gpgme

COMPILER =		base-clang ports-clang ports-gcc

MULTI_PACKAGES =	-main -qt
PSEUDO_FLAVORS =	no_qt
FLAVOR ?=

CONFIGURE_STYLE =	gnu

# Requires gpgsm (gnupg 2.x) during build, but can run with any gnupg.
BUILD_DEPENDS =		gnupg->=2:security/gnupg2

# gnupg-* is normally the default anyway, but gnupg1 overrides PKGSPEC
# so we must be explicit here.
RUN_DEPENDS =		gnupg-*:security/gnupg
LIB_DEPENDS +=		devel/gettext \
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
			${BUILD_PKGPATH},-main
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
