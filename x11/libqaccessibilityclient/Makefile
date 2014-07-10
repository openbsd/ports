# $OpenBSD: Makefile,v 1.1.1.1 2014/07/10 09:01:22 zhuk Exp $

SHARED_ONLY =		Yes
COMMENT =		Qt-based library for writing accessibility apps
DISTNAME =		libqaccessibilityclient-0.1.1

SHARED_LIBS =		qaccessibilityclient	0.0

CATEGORIES =		x11 devel
HOMEPAGE =		https://projects.kde.org/projects/playground/accessibility/libkdeaccessibilityclient
MAINTAINER =		KDE porting team <openbsd-kde@googlegroups.com>

# LGPLv2.1+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtTest c m pthread

MASTER_SITES =		${MASTER_SITE_KDE:=stable/libqaccessibilityclient/}
EXTRACT_SUFX =		.tar.bz2
DIST_SUBDIR =		kde

MODULES =		devel/cmake gcc4 x11/qt4
MODGCC4_ARCHS =		*
MODGCC4_LANGS =		c++

CONFIGURE_ARGS +=	-DQT5_BUILD=No

NO_TEST =		Yes

.include <bsd.port.mk>
