# $OpenBSD: Makefile,v 1.3 2019/05/05 17:09:07 naddy Exp $

COMMENT =	qt binding for libfm

VERSION =	0.13.1

NAME =		libfm-qt
DISTNAME =	${NAME}-${VERSION}
REVISION =	1

SHARED_LIBS +=  fm-qt                     0.0 # 5.0

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Widgets Qt5X11Extras
WANTLIB += exif fm gio-2.0 glib-2.0 gobject-2.0 gthread-2.0 intl
WANTLIB += m menu-cache xcb

LIB_DEPENDS +=		x11/qt5/qtx11extras \
			x11/libfm/core

BUILD_DEPENDS +=	x11/lxqt/build-tools

RUN_DEPENDS +=		x11/lxqt/l10n,-libfm-qt \
			misc/shared-mime-info

CONFIGURE_ARGS +=	-DPULL_TRANSLATIONS:BOOL=OFF

.include <bsd.port.mk>
