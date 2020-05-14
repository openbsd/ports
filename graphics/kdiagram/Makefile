# $OpenBSD: Makefile,v 1.5 2020/05/14 19:46:35 rsadowski Exp $

COMMENT =	libraries for creating business diagrams

VERSION =	2.7.0
DISTNAME =	kdiagram-${VERSION}

CATEGORIES =	graphics

SHARED_LIBS +=  KChart                    1.0 # 2.6
SHARED_LIBS +=  KGantt                    1.0 # 2.6

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
