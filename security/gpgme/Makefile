COMMENT-main =	GnuPG Made Easy
COMMENT-qt =	Qt bindings for GPGme

VERSION =	1.23.2
DISTNAME =	gpgme-${VERSION}
PKGNAME-main =	gpgme-${VERSION}
PKGNAME-qt =	gpgme-qt-${VERSION}
REVISION =	0

CATEGORIES =	security devel

SHARED_LIBS +=  gpgme                24.2     # 43.0
SHARED_LIBS +=  gpgmepp              3.3      # 26.0
SHARED_LIBS +=  qgpgme               3.2      # 20.0
SHARED_LIBS +=  qgpgmeqt6            0.0      # 20.1

HOMEPAGE =	https://www.gnupg.org/software/gpgme/

SITES =		${SITE_GNUPG:=gpgme/}
EXTRACT_SUFX =	.tar.bz2

# GPLv2 - LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB =	assuan gpg-error iconv intl
WANTLIB-main =	${WANTLIB} c m
WANTLIB-qt =	${COMPILER_LIBCXX} ${WANTLIB} b2 Qt6Core double-conversion
WANTLIB-qt +=	execinfo glib-2.0 gpgme gthread-2.0 icudata icui18n icuuc
WANTLIB-qt +=	m pcre2-8 pcre2-16 z zstd

COMPILER =	base-clang ports-gcc

MULTI_PACKAGES =	-main -qt
PSEUDO_FLAVORS =	no_qt
FLAVOR ?=

# don't depend on Qt6 on arches where it's known to fail
NOT_FOR_ARCHS-qt =	alpha mips64 sh

CONFIGURE_STYLE =	gnu

BUILD_DEPENDS =		security/gnupg>=2.2.23p1
RUN_DEPENDS =		security/gnupg>=2.2.23p1
LIB_DEPENDS-main =	${LIB_DEPENDS:N*qt*} \
			devel/gettext,-runtime \
			security/libgpg-error>=1.4 \
			security/libassuan

CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			ac_cv_prog_DOXYGEN=false

.include <bsd.port.arch.mk>

.if ${BUILD_PACKAGES:M-qt}
MODULES +=		x11/qt6
MODQT6_DEPS =		Yes
MODQT6_ENV_SETUP =	Yes
CONFIGURE_ARGS +=	--enable-languages='cpp qt6'
LIB_DEPENDS-qt +=	${LIB_DEPENDS} \
			gpgme-=${VERSION}:${BUILD_PKGPATH},-main
.else
COMPILER_LANGS =	c
CONFIGURE_ARGS +=	--enable-languages=''
.endif

# needed for the regression tests
USE_GMAKE =		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/lang/cpp/src/GpgmeppConfig.cmake.in.in \
		${WRKSRC}/lang/qt/src/QGpgmeQt6Config.cmake.in.in \
		${WRKSRC}/lang/qt/src/QGpgmeConfig.cmake.in.in

.include <bsd.port.mk>
