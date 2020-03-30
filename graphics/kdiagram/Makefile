# $OpenBSD: Makefile,v 1.4 2020/03/30 04:35:03 rsadowski Exp $

COMMENT =	libraries for creating business diagrams

VERSION =	2.6.2
DISTNAME =	kdiagram-${VERSION}

CATEGORIES =	graphics

SHARED_LIBS +=  KChart                    0.1 # 2.6
SHARED_LIBS +=  KGantt                    0.0 # 2.6

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5PrintSupport Qt5Svg
WANTLIB += Qt5Widgets c m

MASTER_SITES =	${MASTER_SITE_KDE:=stable/kdiagram/${VERSION}/}

MODULES =	devel/cmake \
		devel/kf5

LIB_DEPENDS =	x11/qt5/qtsvg

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
