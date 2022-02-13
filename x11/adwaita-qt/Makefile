# $OpenBSD: Makefile,v 1.5 2022/02/13 07:47:14 ajacoutot Exp $

COMMENT =	GNOME Shell style for Qt applications

GH_ACCOUNT =	FedoraQt
GH_PROJECT =	adwaita-qt
GH_TAGNAME =	1.4.1

CATEGORIES =	x11

SHARED_LIBS +=  adwaitaqt     0.0 # 1.2
SHARED_LIBS +=  adwaitaqtpriv 0.0 # 1.2

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5DBus Qt5Gui Qt5Widgets
WANTLIB += Qt5X11Extras m xcb

# GPLv2 only
PERMIT_PACKAGE =	Yes

MODULES =		devel/cmake \
			x11/qt5

BUILD_DEPENDS =		www/sassc

LIB_DEPENDS =		x11/qt5/qtx11extras

CONFIGURE_ENV =		QT_DIR=${LOCALBASE}/lib/qt5/cmake/Qt5/


.include <bsd.port.mk>
