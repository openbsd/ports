# $OpenBSD: Makefile,v 1.6 2016/11/12 20:50:41 jca Exp $

COMMENT =	D-Bus menu implementation for Qt
V =		0.9.3
DISTNAME =	libdbusmenu-qt_${V}+15.10.20150604
PKGNAME =	${PKGSTEM}-${V}
FULLPKGNAME =	${PKGNAME}
REVISION=	1
CATEGORIES =	x11 devel
HOMEPAGE =	https://launchpad.net/libdbusmenu-qt/
MAINTAINER =	KDE porting team <openbsd-kde@googlegroups.com>

SHARED_LIBS =	dbusmenu-qt	1.0 # 2.6
SHARED_LIBS +=	dbusmenu-qt5	1.0 # 2.6

# LGPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://archive.ubuntu.com/ubuntu/pool/main/libd/libdbusmenu-qt/
EXTRACT_SUFX =	.orig.tar.gz

MODULES =	devel/cmake gcc4
MODGCC4_LANGS =	c++
MODGCC4_ARCHS =	*

FLAVORS =	qt5
FLAVOR ?=

# XXX run update-plist with qt5 FLAVOR, or it'll go crazy

.if ${FLAVOR:Mqt5}
MODULES +=	x11/qt5
WANTLIB =	Qt5Core Qt5DBus Qt5Gui Qt5Widgets m
CONFIGURE_ARGS=	-DUSE_QT4=No -DUSE_QT5=Yes
PKGSTEM =	dbusmenu-qt5
.else
MODULES +=	x11/qt4
WANTLIB =	QtDBus QtGui m
CONFIGURE_ARGS=	-DUSE_QT4=Yes -DUSE_QT5=No
PKGSTEM =	dbusmenu-qt
.endif

BUILD_DEPENDS =	devel/qjson \
		devel/doxygen
TEST_DEPENDS =	devel/qjson

# XXX "!icon.isNull()" failed tests are normal, they do mean that
# mentioned icon is not installed; e.g., these are the test bugs.
TEST_TARGET =		check
TEST_IS_INTERACTIVE =	X11

WRKDIST =	${WRKDIR}/${DISTNAME:C/_/-/}

SUBST_VARS =	PKGSTEM

post-install:
	rm -Rf ${PREFIX}/share/doc/lib${PKGSTEM}
	mv ${PREFIX}/share/doc/lib${PKGSTEM}-doc ${PREFIX}/share/doc/${PKGSTEM}

.include <bsd.port.mk>
