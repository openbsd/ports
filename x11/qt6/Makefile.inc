ONLY_FOR_ARCHS ?=	${GCC4_ARCHS} ${CLANG_ARCHS}

.include "Makefile.version"

VERSION ?=		${QT6_VERSION}
NEXT_VERSION ?=		${QT6_NEXT_VERSION}
QT6_PKGSPEC ?=		>=${VERSION},<${NEXT_VERSION}
DISTNAME ?=		${QT6NAME:L}-everywhere-src-${VERSION}

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

MASTER_SITES ?=		https://download.qt.io/official_releases/qt/${VERSION:R}/${VERSION}/submodules/ \
			https://mirrors.ocf.berkeley.edu/qt/official_releases/qt/${VERSION:R}/${VERSION}/submodules/

DIST_SUBDIR ?=		qt
EXTRACT_SUFX ?=		.tar.xz

MODULES :=		devel/cmake x11/qt6 ${MODULES}

CXXFLAGS +=		-I${LOCALBASE}/include
LDFLAGS +=		-L${LOCALBASE}/lib -lc

CONFIGURE_ARGS +=	-DCMAKE_EXE_LINKER_FLAGS_INIT="${LDFLAGS}" \
			-DCMAKE_MODULE_LINKER_FLAGS_INIT="${LDFLAGS}" \
			-DCMAKE_SHARED_LINKER_FLAGS_INIT="${LDFLAGS}"

SUBST_VARS +=	VERSION

DEBUG_PACKAGES ?=	${BUILD_PACKAGES}

PROGRAMS6 =	assistant designer linguist lrelease lupdate moc pixeltool \
		qcollectiongenerator qdbus qdoc qmake qml qtdiag rcc uic

.PHONY: qt6-post-install
post-install: qt6-post-install
qt6-post-install:
# public programs
.for p in ${PROGRAMS6}
	! test -e ${PREFIX}/lib/qt6/bin/$p || \
	    ln -sf ../lib/qt6/bin/$p ${PREFIX}/bin/$p-qt6
.endfor
