# $OpenBSD: Makefile,v 1.12 2014/07/10 19:50:25 zhuk Exp $

COMMENT =	multimedia layer for Qt4/KDE4
CATEGORIES =	multimedia devel
VERSION =	4.7.2
DISTNAME =	phonon-${VERSION}
HOMEPAGE =	http://phonon.kde.org/

# Renamed to avoid clashing with Qt4's one
SHARED_LIBS =	phonon_s		1.0 \
		phonon_sexperimental	0.0

# LGPL v2.1
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_KDE:=stable/phonon/${VERSION}/}

MODULES =		x11/kde4
MODKDE4_USE =
MODKDE4_LIB_LINKS =	Yes

WANTLIB =	m pthread
WANTLIB +=	lib/qt4/QtDBus lib/qt4/QtDeclarative lib/qt4/QtGui
WANTLIB +=	lib/qt4/QtNetwork lib/qt4/QtScript lib/qt4/QtSql lib/qt4/QtSvg
WANTLIB +=	lib/qt4/QtTest lib/qt4/QtXml lib/qt4/QtXmlPatterns
WANTLIB +=	pulse pulse-mainloop-glib qzeitgeist

LIB_DEPENDS =	productivity/libqzeitgeist>=0.8.0 \
		audio/pulseaudio

# Not sure if it's needed at all but doesn't hurt either for now.
CONFIGURE_ARGS =	-DPHONON_INSTALL_QT_EXTENSIONS_INTO_SYSTEM_QT:Bool=Yes \
			-DINCLUDE_INSTALL_DIR=include/phonon \
			-DBACKEND_INSTALL_DIR="${PREFIX}/lib/kde4/plugins/phonon_backend"

# Clashes with the one provided by Qt itself.
CONFIGURE_ARGS +=	-DPHONON_BUILD_DESIGNER_PLUGIN:Bool=No

# Upstream says, tests need to be redone.
NO_TEST =		Yes

.include <bsd.port.mk>
