# $OpenBSD: Makefile,v 1.3 2017/07/27 16:58:48 sthen Exp $

COMMENT =	multimedia layer for Qt4/KDE4
VERSION =	4.9.1
REVISION =	0
DISTNAME =	phonon-${VERSION}
PKGNAME =	phonon-qt5-${VERSION}

# XXX major should be tweaked on any update, to unbreak
# IMPORTED_LINK_INTERFACE_LIBRARIES CMake feature.
SHARED_LIBS +=	phonon4qt5		1.0
SHARED_LIBS +=	phonon4qt5experimental	1.0

CATEGORIES =	multimedia devel
HOMEPAGE =	http://phonon.kde.org/
MAINTAINER =	KDE porting team <openbsd-kde@googlegroups.com>

# LGPL v2.1
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_KDE:=stable/phonon/${VERSION}/}
EXTRACT_SUFX =		.tar.xz

WANTLIB =		m pulse pulse-mainloop-glib
WANTLIB +=		Qt5Core Qt5DBus Qt5Gui Qt5Widgets ${COMPILER_LIBCXX}

MODULES =		devel/kf5

LIB_DEPENDS =		audio/pulseaudio
BUILD_DEPENDS =		x11/qt5/qtdeclarative
RUN_DEPENDS =		x11/qt5/qtdeclarative

PHONON_INCLUDE_DIR =	include/phonon4qt5

# Clashes with the one provided by Qt itself.
CONFIGURE_ARGS +=	-DPHONON_BUILD_DESIGNER_PLUGIN:Bool=No \
			-DCMAKE_POLICY_DEFAULT_CMP0017=NEW \
			-DPHONON_INSTALL_QT_COMPAT_HEADERS=No

CONFIGURE_ARGS +=	-DPHONON_BUILD_PHONON4QT5=Yes \
			-DINCLUDE_INSTALL_DIR=${PHONON_INCLUDE_DIR} \
			-DPHONON_INSTALL_QT_EXTENSIONS_INTO_SYSTEM_QT=Yes

SUBST_VARS =		PHONON_INCLUDE_DIR

.include <bsd.port.mk>
