# $OpenBSD: Makefile,v 1.5 2015/08/12 10:00:50 zhuk Exp $

CATEGORIES =	x11 sysutils
COMMENT =	quake-style terminal emulator for KDE 4
HOMEPAGE =	http://yakuake.kde.org/
VERSION =	2.9.9
DISTNAME =	yakuake-${VERSION}
REVISION =	1

MASTER_SITES =	${MASTER_SITE_KDE:=stable/yakuake/${VERSION}/src/}

# GPLv2+
PERMIT_PACKAGE_CDROM =          Yes

MODULES =		devel/gettext x11/kde4
MODGETTEXT_TOOLS =	Yes

WANTLIB =  c m pthread X11
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio ${KDE4LIB}/knewstuff3
WANTLIB += ${KDE4LIB}/knotifyconfig ${KDE4LIB}/kparts ${KDE4LIB}/nepomuk
WANTLIB += ${KDE4LIB}/nepomukutils
WANTLIB += soprano

RUN_DEPENDS =	${MODKDE4_DEP_DIR}/konsole \
		devel/desktop-file-utils \
		x11/gtk+3,-guic

SUBST_VARS =	DISTNAME

.include <bsd.port.mk>
