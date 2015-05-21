# $OpenBSD: Makefile,v 1.30 2015/05/21 00:32:46 bcallah Exp $

COMMENT =	free font editor for TTF, EOT, and SVG fonts
DISTNAME =	birdfont-2.8.0
EXTRACT_SUFX =	.tar.xz
CATEGORIES =	graphics print

# Both libs must have the same SO number!
# See scripts/bavala.py (or patches/patch-scripts_bavala_py)
SHARED_LIBS +=	birdfont			14.0 # 2.8.0
SHARED_LIBS +=	birdgems			14.0 # 2.8.0
SHARED_LIBS +=	birdxml				14.0 # 2.8.0

HOMEPAGE =	http://birdfont.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject dbus-1 epoxy expat fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gee-0.8 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gtk-3 harfbuzz javascriptcoregtk-3.0
WANTLIB += m notify pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread pthread-stubs soup-2.4 webkitgtk-3.0
WANTLIB += xcb xcb-render xcb-shm xml2 z

MASTER_SITES =	http://birdfont.org/releases/

MODULES =	devel/gettext \
		lang/python

MODPY_ADJ_FILES =	configure install.py

BUILD_DEPENDS =	devel/py-doit \
		lang/vala

LIB_DEPENDS =	devel/libgee \
		devel/libnotify \
		www/webkit,gtk3

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+3,-guic

CONFIGURE_STYLE =	simple

NO_TEST =	Yes
SUBST_VARS +=	DESTDIR

pre-configure:
	perl -pi -e "s,bash,sh,g" ${WRKSRC}/*.sh ${WRKSRC}/scripts/run.py
	${SUBST_CMD} ${WRKSRC}/configure ${WRKSRC}/install.py \
		${WRKSRC}/dodo.py ${WRKSRC}/scripts/bavala.py

do-build:
	cd ${WRKSRC} && ${LOCALBASE}/bin/doit

do-install:
	cd ${WRKSRC} && ./install.py --nogzip=1

.include <bsd.port.mk>
