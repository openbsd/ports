# $OpenBSD: Makefile,v 1.8 2015/05/28 10:17:28 pascal Exp $

COMMENT =	KDE terminal emulator
DISTNAME =	konsole-${MODKDE4_VERSION}
REVISION =	0

SHARED_LIBS =	kdeinit4_konsole	51.0
SHARED_LIBS +=	konsoleprivate		51.0

WANTLIB =  c m pthread
WANTLIB += ICE SM X11 Xext
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio ${KDE4LIB}/knotifyconfig
WANTLIB += ${KDE4LIB}/konq ${KDE4LIB}/kparts ${KDE4LIB}/kpty
WANTLIB += ${KDE4LIB}/nepomuk ${KDE4LIB}/nepomukutils
WANTLIB += soprano

RUN_DEPENDS =	devel/desktop-file-utils

LIB_DEPENDS =	${MODKDE4_DEP_DIR}/baseapps>=${MODKDE4_DEP_VERSION}

TEST_IS_INTERACTIVE =	X11
TEST_DEPENDS =		${BUILD_PKGPATH}

.include <bsd.port.mk>
