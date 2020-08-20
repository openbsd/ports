# $OpenBSD: Makefile,v 1.29 2020/08/20 18:00:14 rsadowski Exp $

COMMENT =	multimedia layer for Qt5/KDE5

CATEGORIES =	multimedia devel

VERSION =	4.11.1
DISTNAME =	phonon-${VERSION}

# XXX major should be tweaked on any update, to unbreak
# IMPORTED_LINK_INTERFACE_LIBRARIES CMake feature.
SHARED_LIBS +=	phonon4qt5		4.0
SHARED_LIBS +=	phonon4qt5experimental	4.0

HOMEPAGE =	https://community.kde.org/Phonon

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# LGPL v2.1
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Widgets c m pulse
WANTLIB += pulse-mainloop-glib

MASTER_SITES =		${MASTER_SITE_KDE:=stable/phonon/${VERSION}/}

MODULES =		devel/kf5

LIB_DEPENDS =		audio/pulseaudio

BUILD_DEPENDS =		x11/qt5/qtdeclarative

RUN_DEPENDS =		x11/qt5/qtdeclarative

# Clashes with the one provided by Qt itself.
CONFIGURE_ARGS +=	-DPHONON_BUILD_DESIGNER_PLUGIN=OFF

.include <bsd.port.mk>
