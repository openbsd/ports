# $OpenBSD: Makefile,v 1.18 2021/12/09 05:53:50 rsadowski Exp $

COMMENT =	declarative cross-platform build tool

V =		1.20.0
DISTNAME =	qbs-src-${V}
PKGNAME =	qbs-${V}
REVISION =	0

SHARED_LIBS =	qbscore		8.0

CATEGORIES =	devel

HOMEPAGE =	https://doc.qt.io/qbs/

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

MASTER_SITES =		https://download.qt.io/official_releases/qbs/${V}/

# LGPLv3 or GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Concurrent Qt5Core Qt5Gui Qt5Network
WANTLIB += Qt5Script Qt5Widgets Qt5Xml c m

MODULES =		x11/qt5 \
			devel/cmake

BUILD_DEPENDS =		x11/qt5/qtdeclarative
RUN_DEPENDS =		x11/qt5/qtdeclarative

LIB_DEPENDS =		x11/qt5/qtbase \
			x11/qt5/qtscript

CONFIGURE_ENV +=	QT_DIR=/usr/local/lib/qt5/cmake

.include <bsd.port.mk>
