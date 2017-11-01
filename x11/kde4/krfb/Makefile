# $OpenBSD: Makefile,v 1.8 2017/11/01 16:03:41 jasper Exp $

COMMENT =	desktop sharing
DISTNAME =	krfb-${MODKDE4_VERSION}
REVISION =	3

CATEGORIES =	net
HOMEPAGE =	http://projects.kde.org/projects/kde/kdenetwork/krfb

SHARED_LIBS =	krfbprivate		52.0

WANTLIB =  c m pthread z
WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += X11 Xdamage Xext Xtst
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kdnssd
WANTLIB += jpeg

RUN_DEPENDS =	devel/desktop-file-utils

LIB_DEPENDS =	graphics/jpeg

# Unported yet
CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_KTp=True

.include <bsd.port.mk>
