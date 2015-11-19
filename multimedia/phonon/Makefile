# $OpenBSD: Makefile,v 1.18 2015/11/19 13:53:34 zhuk Exp $

COMMENT =	multimedia layer for Qt4/KDE4
CATEGORIES =	multimedia devel
VERSION =	4.8.3
DISTNAME =	phonon-${VERSION}
HOMEPAGE =	http://phonon.kde.org/
REVISION =	1

# Renamed to avoid clashing with Qt4's one
# XXX major should be tweaked on any update, to unbreak
# IMPORTED_LINK_INTERFACE_LIBRARIES CMake feature.
SHARED_LIBS =	phonon_s		2.0 \
		phonon_sexperimental	1.0

MAINTAINER =	KDE porting team <openbsd-kde@googlegroups.com>

# LGPL v2.1
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_KDE:=stable/phonon/${VERSION}/src/}
EXTRACT_SUFX =		.tar.xz

# XXX Qt5 FLAVOR doesn't work yet!
#FLAVORS =		qt5
FLAVOR ?=

.if ${FLAVOR:Mqt5}
MODULES =		x11/qt5 devel/cmake
PHONON_INCLUDE_DIR =	include/phonon4qt5
.else
MODULES =		x11/kde4
MODKDE4_USE =
MODKDE4_LIB_LINKS =	Yes
PHONON_INCLUDE_DIR =	${MODKDE4_INCLUDE_DIR}

WANTLIB =	m
WANTLIB +=	lib/qt4/QtDBus lib/qt4/QtDeclarative lib/qt4/QtGui
WANTLIB +=	lib/qt4/QtTest
WANTLIB +=	pulse pulse-mainloop-glib qzeitgeist
.endif

LIB_DEPENDS =	productivity/libqzeitgeist>=0.8.0 \
		audio/pulseaudio

# Not sure if it's needed at all but doesn't hurt either for now.
CONFIGURE_ARGS =	-DPHONON_INSTALL_QT_EXTENSIONS_INTO_SYSTEM_QT:Bool=Yes

# Clashes with the one provided by Qt itself.
CONFIGURE_ARGS +=	-DPHONON_BUILD_DESIGNER_PLUGIN:Bool=No \
			-DCMAKE_POLICY_DEFAULT_CMP0017=NEW \
			-DPHONON_INSTALL_QT_COMPAT_HEADERS=No

.if ${FLAVOR:Mqt5}
CONFIGURE_ARGS +=	-DPHONON_BUILD_PHONON4QT5=Yes \
			-DINCLUDE_INSTALL_DIR=include/phonon4qt5
.else
CONFIGURE_ARGS +=	-DBACKEND_INSTALL_DIR="${PREFIX}/lib/kde4/plugins/phonon_backend"
.endif

# Upstream says, tests need to be redone.
NO_TEST =		Yes

SUBST_VARS =		PHONON_INCLUDE_DIR

.include <bsd.port.mk>
