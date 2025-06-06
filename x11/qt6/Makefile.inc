ONLY_FOR_ARCHS ?=	${GCC4_ARCHS} ${CLANG_ARCHS}

FIX_EXTRACT_PERMISSIONS =	Yes

.include "Makefile.version"

VERSION ?=		${QT6_VERSION}
NEXT_VERSION ?=		${QT6_NEXT_VERSION}
QT6_PKGSPEC ?=		>=${VERSION},<${NEXT_VERSION}
DISTNAME ?=		${QT6NAME:L}-everywhere-src-${VERSION}

MAINTAINER ?=		Rafael Sadowski <rsadowski@openbsd.org>

PKGNAME ?=		qt6-${DISTNAME:C/-everywhere-src//:C/-${VERSION}/-${VERSION}/}
PKGNAME-main ?=		${PKGNAME}

DPB_PROPERTIES +=	nojunk

CATEGORIES +=		x11 devel

HOMEPAGE ?=		https://www.qt.io/

# Mostly LGPLv2.1 or LGPLv3 for code; FDLv1.3 for documentation.
# Some third-party parts are BSD-licensed.
# Also, many parts have are dual-licensed having either commercial, GPL,
# Apache 2.0 or other type of license as an alternative option.
# A few components, including QtWebEngine, are LGPLv3 only, no LGPLv2.1.
PERMIT_PACKAGE ?=	Yes

SITES ?=		https://download.qt.io/official_releases/qt/${VERSION:R}/${VERSION}/submodules/ \
			https://mirrors.ocf.berkeley.edu/qt/official_releases/qt/${VERSION:R}/${VERSION}/submodules/ \
			https://download.qt.io/archive/qt/${VERSION:R}/${VERSION}/submodules/

DIST_SUBDIR ?=		qt
EXTRACT_SUFX ?=		.tar.xz

MODULES :=		devel/cmake x11/qt6 ${MODULES}

CXXFLAGS +=		-I${LOCALBASE}/include
MODCMAKE_LDFLAGS +=	-L${LOCALBASE}/lib -lc

CONFIGURE_ARGS +=	-DQT_GENERATE_SBOM=OFF

.if defined(USE_CCACHE) && ${USE_CCACHE:L} == "yes"
CONFIGURE_ARGS +=	-DQT_USE_CCACHE=ON
.else
CONFIGURE_ARGS +=	-DQT_USE_CCACHE=OFF
.endif

SUBST_VARS +=	VERSION

DEBUG_PACKAGES ?=	${BUILD_PACKAGES}

PROGRAMS6 ?=

.PHONY: qt6-post-install
post-install: qt6-post-install
qt6-post-install:
# public programs
.for p in ${PROGRAMS6}
	! test -e ${PREFIX}/lib/qt6/bin/$p || \
	    ln -sf ../lib/qt6/bin/$p ${PREFIX}/bin/$p-qt6
	! test -e ${PREFIX}/lib/qt6/libexec/$p || \
	    ln -sf ../lib/qt6/libexec/$p ${PREFIX}/bin/$p-qt6
.endfor
