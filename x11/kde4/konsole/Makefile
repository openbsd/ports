# $OpenBSD: Makefile,v 1.2 2013/05/14 09:16:27 zhuk Exp $

COMMENT =	KDE terminal emulator
DISTNAME =	konsole-${MODKDE4_VERSION}

# Check that sysctl() really could return EAGAIN (OpenBSDProcessInfo).

SHARED_LIBS =	kdeinit4_konsole	50.0
SHARED_LIBS +=	konsoleprivate		50.0

WANTLIB =  c m pthread stdc++
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
