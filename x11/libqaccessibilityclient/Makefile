# $OpenBSD: Makefile,v 1.10 2018/12/09 08:27:04 rsadowski Exp $

COMMENT =	Qt-based library for writing accessibility apps

DISTNAME =	libqaccessibilityclient-0.3.0

SHARED_LIBS +=	qaccessibilityclient-qt5  0.0 # 0.3

CATEGORIES =	x11 devel

MAINTAINER =	KDE porting team <openbsd-kde@googlegroups.com>

# LGPLv2.1+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5DBus Qt5Gui Qt5Test Qt5Widgets
WANTLIB += c m

MASTER_SITES =	${MASTER_SITE_KDE:=stable/libqaccessibilityclient/}

EXTRACT_SUFX =	.tar.xz

MODULES =	devel/cmake \
		x11/qt5

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
