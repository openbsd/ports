# $OpenBSD: Makefile,v 1.1.1.1 2013/07/13 16:16:36 bcallah Exp $

COMMENT =	free font editor for TTF, EOT, and SVG fonts
DISTNAME =	birdfont-0.21
CATEGORIES =	graphics print

SHARED_LIBS +=	birdfont			0.0 # 0.0

HOMEPAGE =	http://birdfont.org/

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gtk-x11-2.0 harfbuzz
WANTLIB += javascriptcoregtk-1.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread-stubs pthread
WANTLIB += soup-2.4 webkitgtk-1.0 xcb-render xcb-shm xcb xml2 z

MASTER_SITES =	http://birdfont.org/releases/

MODULES =	devel/gettext \
		lang/python

BUILD_DEPENDS =	devel/py-doit \
		lang/vala

LIB_DEPENDS =	www/webkit

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

CONFIGURE_STYLE =	simple

NO_TEST =	Yes
SUBST_VARS +=	DESTDIR

post-patch:
	perl -pi -e "s,/usr/bin/python,${MODPY_BIN},g" ${WRKSRC}/configure ${WRKSRC}/install
	perl -pi -e "s,bash,sh,g" ${WRKSRC}/birdfont.sh
	${SUBST_CMD} ${WRKSRC}/configure ${WRKSRC}/install ${WRKSRC}/scripts/bavala.py

do-build:
	cd ${WRKSRC} && ${LOCALBASE}/bin/doit

do-install:
	cd ${WRKSRC} && ./install

.include <bsd.port.mk>
