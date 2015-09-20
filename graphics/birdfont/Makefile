# $OpenBSD: Makefile,v 1.39 2015/09/20 12:07:35 jasper Exp $

COMMENT =	free font editor for TTF, EOT, and SVG fonts
DISTNAME =	birdfont-2.11.7
CATEGORIES =	graphics print

SHARED_LIBS +=	birdfont			17.0 # 2.11.7
SHARED_LIBS +=	birdgems			17.0 # 2.11.7

HOMEPAGE =	http://birdfont.org/

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += atk-1.0 c cairo cairo-gobject fontconfig freetype gdk-3
WANTLIB += gdk_pixbuf-2.0 gee-0.8 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-3 javascriptcoregtk-3.0 m notify pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pthread soup-2.4 sqlite3 webkitgtk-3.0
WANTLIB += xmlbird z

MASTER_SITES =	http://birdfont.org/releases/
EXTRACT_SUFX =	.tar.xz

MODULES =	devel/gettext \
		lang/python

MODPY_ADJ_FILES =	configure install.py

BUILD_DEPENDS =	devel/py-doit \
		lang/vala

LIB_DEPENDS =	devel/libgee \
		devel/libnotify \
		textproc/libxmlbird \
		www/webkit,gtk3

RUN_DEPENDS =	devel/desktop-file-utils \
		fonts/roboto-fonts \
		misc/shared-mime-info \
		x11/gtk+3,-guic

CONFIGURE_STYLE =	simple

NO_TEST =	Yes

SUBST_VARS +=	DESTDIR

pre-configure:
	perl -pi -e "s,bash,sh,g" ${WRKSRC}/*.sh ${WRKSRC}/scripts/run.py
	${SUBST_CMD} ${WRKSRC}/configure ${WRKSRC}/install.py \
		${WRKSRC}/dodo.py ${WRKSRC}/scripts/version.py

do-build:
	cd ${WRKSRC} && ${LOCALBASE}/bin/doit

do-install:
	cd ${WRKSRC} && ./install.py --nogzip=1

.include <bsd.port.mk>
