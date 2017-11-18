# $OpenBSD: Makefile,v 1.8 2017/11/18 22:24:00 naddy Exp $

CATEGORIES =	x11 sysutils
COMMENT =	quake-style terminal emulator for KDE 4
HOMEPAGE =	http://yakuake.kde.org/
VERSION =	2.9.9
DISTNAME =	yakuake-${VERSION}
REVISION =	2

MASTER_SITES =	${MASTER_SITE_KDE:=stable/yakuake/${VERSION}/src/}

# GPLv2+
PERMIT_PACKAGE_CDROM =          Yes

MODULES =		devel/gettext x11/kde4

WANTLIB =  c m pthread X11
WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio ${KDE4LIB}/knewstuff3
WANTLIB += ${KDE4LIB}/knotifyconfig ${KDE4LIB}/kparts ${KDE4LIB}/nepomuk
WANTLIB += ${KDE4LIB}/nepomukutils
WANTLIB += soprano

BUILD_DEPENDS =	devel/gettext-tools

RUN_DEPENDS =	${MODKDE4_DEP_DIR}/konsole \
		devel/desktop-file-utils \
		x11/gtk+3,-guic

SUBST_VARS =	DISTNAME

.include <bsd.port.mk>
