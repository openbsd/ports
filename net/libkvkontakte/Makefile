# $OpenBSD: Makefile,v 1.1.1.1 2015/07/10 08:33:05 zhuk Exp $

COMMENT =		KDE library implementing VK.com API
VERSION =		4.12.0
DISTNAME =		libkvkontakte-${VERSION}

SHARED_LIBS =		kvkontakte	0.0

CATEGORIES =		net
HOMEPAGE =		https://projects.kde.org/projects/extragear/libs/libkvkontakte
MAINTAINER =		KDE porting team <openbsd-kde@googlegroups.com>

# LGPLv2.1+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =  m pthread
WANTLIB += QtDBus QtGui QtNetwork QtSvg QtWebKit QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kdewebkit
WANTLIB += ${KDE4LIB}/kio ${KDE4LIB}/kparts
WANTLIB += ${KDE4LIB}/nepomuk ${KDE4LIB}/nepomukutils
WANTLIB += qjson soprano

LIB_DEPENDS =		devel/qjson>=0.7

MASTER_SITES =		${MASTER_SITE_KDE:=stable/libkvkontakte/${VERSION}/src/}
EXTRACT_SUFX =		.tar.xz

MODULES =		x11/kde4 devel/gettext
MODKDE4_USE =		libs

# - requires VK auth;
# - some tests fail due to high requests rate.
TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
