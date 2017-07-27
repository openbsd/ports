# $OpenBSD: Makefile,v 1.8 2017/07/27 10:15:29 sthen Exp $

COMMENT =		Qt-based library for writing accessibility apps
DISTNAME =		libqaccessibilityclient-0.1.1
REVISION =	2

SHARED_LIBS =		qaccessibilityclient	0.0

CATEGORIES =		x11 devel
HOMEPAGE =		https://projects.kde.org/projects/playground/accessibility/libkdeaccessibilityclient
MAINTAINER =		KDE porting team <openbsd-kde@googlegroups.com>

# LGPLv2.1+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtTest c m pthread
WANTLIB += ${COMPILER_LIBCXX}

MASTER_SITES =		${MASTER_SITE_KDE:=stable/libqaccessibilityclient/}
EXTRACT_SUFX =		.tar.bz2
DIST_SUBDIR =		kde

MODULES =		devel/cmake x11/qt4
COMPILER =		gcc

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_Qt5Widgets=Yes \
			-DCMAKE_DISABLE_FIND_PACKAGE_Qt5DBus=Yes

NO_TEST =		Yes

.include <bsd.port.mk>
