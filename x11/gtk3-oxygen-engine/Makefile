# $OpenBSD: Makefile,v 1.7 2018/10/24 14:28:13 sthen Exp $
COMMENT =		KDE Oxygen widget theme for GTK+3

V =			1.3.5
DISTNAME =		oxygen-gtk3-${V}
PKGNAME =		gtk3-oxygen-engine-${V}
REVISION =		2

CATEGORIES =		x11
HOMEPAGE =		https://projects.kde.org/projects/playground/artwork/oxygen-gtk/

MAINTAINER =		Fabian Raetz <fabian.raetz@gmail.com>

# LGPLv2.1+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 atk-1.0 c cairo cairo-gobject fontconfig freetype
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-3
WANTLIB += iconv intl m pango-1.0 pangocairo-1.0 pangoft2-1.0 pthread
WANTLIB += ${COMPILER_LIBCXX} z

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =		${MASTER_SITE_KDE:=stable/oxygen-gtk3/${V}/src/}

EXTRACT_SUFX =		.tar.bz2

MODULES =		devel/cmake

LIB_DEPENDS =		x11/gtk+3

NO_TEST =		Yes

.include <bsd.port.mk>
