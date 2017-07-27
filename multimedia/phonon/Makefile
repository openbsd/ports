# $OpenBSD: Makefile,v 1.23 2017/07/27 09:55:45 sthen Exp $

COMMENT =	multimedia layer for Qt4/KDE4
CATEGORIES =	multimedia devel
VERSION =	4.8.3
DISTNAME =	phonon-${VERSION}
HOMEPAGE =	http://phonon.kde.org/
REVISION =	6

# The phonon_s* are for KDE4-only, renamed to avoid clashing with Qt4's one
# XXX major should be tweaked on any update, to unbreak
# IMPORTED_LINK_INTERFACE_LIBRARIES CMake feature.
SHARED_LIBS =	phonon_s		2.0
SHARED_LIBS +=	phonon_sexperimental	1.0

MAINTAINER =	KDE porting team <openbsd-kde@googlegroups.com>

# LGPL v2.1
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_KDE:=stable/phonon/${VERSION}/src/}
EXTRACT_SUFX =		.tar.xz

WANTLIB =		m pulse pulse-mainloop-glib
LIB_DEPENDS =		audio/pulseaudio

MODULES =		x11/kde4
MODKDE4_USE =
MODKDE4_LIB_LINKS =	Yes
PHONON_INCLUDE_DIR =	${MODKDE4_INCLUDE_DIR}
WANTLIB +=		QtDBus QtGui
WANTLIB += ${COMPILER_LIBCXX}

# Not sure if it's needed at all but doesn't hurt either for now.
CONFIGURE_ARGS =	-DPHONON_INSTALL_QT_EXTENSIONS_INTO_SYSTEM_QT:Bool=Yes

# Clashes with the one provided by Qt itself.
CONFIGURE_ARGS +=	-DPHONON_BUILD_DESIGNER_PLUGIN:Bool=No \
			-DCMAKE_POLICY_DEFAULT_CMP0017=NEW \
			-DPHONON_INSTALL_QT_COMPAT_HEADERS=No

CONFIGURE_ARGS +=	-DBACKEND_INSTALL_DIR="${PREFIX}/lib/kde4/plugins/phonon_backend"

# Upstream says, tests need to be redone.
NO_TEST =		Yes

SUBST_VARS =		PHONON_INCLUDE_DIR

.include <bsd.port.mk>
