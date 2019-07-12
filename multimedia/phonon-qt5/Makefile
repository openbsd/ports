# $OpenBSD: Makefile,v 1.6 2019/07/12 20:47:57 sthen Exp $

COMMENT =	multimedia layer for Qt5/KDE5
VERSION =	4.10.1
DISTNAME =	phonon-${VERSION}
PKGNAME =	phonon-qt5-${VERSION}
REVISION =	0

# XXX major should be tweaked on any update, to unbreak
# IMPORTED_LINK_INTERFACE_LIBRARIES CMake feature.
SHARED_LIBS +=	phonon4qt5		2.0
SHARED_LIBS +=	phonon4qt5experimental	2.0

CATEGORIES =	multimedia devel
HOMEPAGE =	https://phonon.kde.org/
MAINTAINER =	KDE porting team <openbsd-kde@googlegroups.com>

# LGPL v2.1
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5DBus Qt5Gui Qt5Widgets
WANTLIB += m pulse pulse-mainloop-glib

MASTER_SITES =		${MASTER_SITE_KDE:=stable/phonon/${VERSION}/}

MODULES =		devel/kf5

LIB_DEPENDS =		audio/pulseaudio
BUILD_DEPENDS =		x11/qt5/qtdeclarative
RUN_DEPENDS =		x11/qt5/qtdeclarative

PHONON_INCLUDE_DIR =	include/phonon4qt5

# Clashes with the one provided by Qt itself.
CONFIGURE_ARGS +=	-DPHONON_BUILD_DESIGNER_PLUGIN:Bool=No \
			-DPHONON_INSTALL_QT_COMPAT_HEADERS=No

CONFIGURE_ARGS +=	-DPHONON_BUILD_PHONON4QT5=Yes \
			-DINCLUDE_INSTALL_DIR=${PHONON_INCLUDE_DIR} \
			-DPHONON_INSTALL_QT_EXTENSIONS_INTO_SYSTEM_QT=Yes

SUBST_VARS =		PHONON_INCLUDE_DIR

.include <bsd.port.mk>
