# $OpenBSD: Makefile,v 1.1.1.1 2014/07/20 20:41:58 landry Exp $
COMMENT =		KDE Oxygen widget theme for GTK+3

SHARED_ONLY =		Yes

V =			1.3.5
DISTNAME =		oxygen-gtk3-${V}
PKGNAME =		gtk3-oxygen-engine-${V}

CATEGORIES =		x11
HOMEPAGE =		https://projects.kde.org/projects/playground/artwork/oxygen-gtk/

MAINTAINER =		Fabian Raetz <fabian.raetz@gmail.com>

# LGPLv2.1+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 atk-1.0 c cairo cairo-gobject fontconfig freetype
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-3
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pthread stdc++
WANTLIB += z

MASTER_SITES =		${MASTER_SITE_KDE:=stable/oxygen-gtk3/${V}/src/}

EXTRACT_SUFX =		.tar.bz2

MODULES =		devel/cmake devel/gettext

LIB_DEPENDS =		x11/gtk+3

NO_TEST =		Yes

.include <bsd.port.mk>
