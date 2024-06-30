ONLY_FOR_ARCHS=	${LP64_ARCHS}

COMMENT =	declarative cross-platform build tool

V =		2.3.1
DISTNAME =	qbs-src-${V}
PKGNAME =	qbs-${V}

SHARED_LIBS =	qbscore		16.0

CATEGORIES =	devel

HOMEPAGE =	https://doc.qt.io/qbs/

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

SITES =		https://download.qt.io/official_releases/qbs/${V}/

# LGPLv3 or GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Concurrent Qt6Core Qt6Core5Compat
WANTLIB += Qt6Gui Qt6Network Qt6Widgets Qt6Xml c m

MODULES =		devel/cmake \
			x11/qt6 \
			lang/python

BUILD_DEPENDS =		x11/qt6/qtdeclarative
RUN_DEPENDS =		x11/qt6/qtdeclarative

LIB_DEPENDS =		x11/qt6/qt5compat

post-install:
	${MODPY_COMPILEALL} ${PREFIX}/share/qbs/python/

.include <bsd.port.mk>
