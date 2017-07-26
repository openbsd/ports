# $OpenBSD: Makefile,v 1.5 2017/07/26 22:45:33 sthen Exp $
COMMENT =		KDE Oxygen widget theme for GTK

V =			1.4.5
DISTNAME =		oxygen-gtk2-${V}
PKGNAME =		gtk2-oxygen-engine-${V}
REVISION =		0

CATEGORIES =		x11
HOMEPAGE =		https://projects.kde.org/projects/playground/artwork/oxygen-gtk/

MAINTAINER =		Fabian Raetz <fabian.raetz@gmail.com>

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pthread ${COMPILER_LIBCXX} z

MASTER_SITES =		http://download.kde.org/stable/oxygen-gtk2/${V}/src/

EXTRACT_SUFX =		.tar.bz2

MODULES =		devel/cmake devel/gettext

LIB_DEPENDS =		x11/gtk+2

NO_TEST =		Yes

.include <bsd.port.mk>
