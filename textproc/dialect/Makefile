COMMENT =		translation app for GNOME
V =			2.4.1
DIST_TUPLE =		github	dialect-app	dialect	${V}	. \
			github	dialect-app	po	${V}	po
CATEGORIES =		textproc x11

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

HOMEPAGE =		https://dialectapp.org/

# GPLv3.0
PERMIT_PACKAGE =	Yes

MODULES =		devel/dconf \
			devel/meson \
			lang/python

BUILD_DEPENDS =		devel/gettext,-tools \
			devel/glib2 \
			devel/gobject-introspection \
			devel/libsoup3 \
			devel/py-gobject3${MODPY_FLAVOR} \
			multimedia/gstreamer1/core \
			x11/blueprint-compiler \
			x11/gnome/libadwaita>=1.5.0 \
			x11/gtk+4

RUN_DEPENDS =		devel/desktop-file-utils \
			devel/glib2 \
			devel/gobject-introspection \
			devel/libsoup3 \
			devel/py-gobject3${MODPY_FLAVOR} \
			multimedia/gstreamer1/core \
			textproc/py-gTTS${MODPY_FLAVOR} \
			www/py-beautifulsoup4${MODPY_FLAVOR} \
			x11/gnome/libadwaita>=1.5.0 \
			x11/gnome/libsecret \
			x11/gtk+4 \
			x11/gtk+4,-guic

PORTHOME =		${WRKDIR}

PNG_URL =		https://raw.githubusercontent.com/dialect-app/dialect/main/

# XXX if 'test' runs before 'fake', the package will contain WRKSRC paths
pre-test:
	# avoid fetching files
	sed -i 's,${PNG_URL},file://${WRKSRC}/,' \
		${WRKBUILD}/data/app.drey.Dialect.metainfo.xml

post-install:
	${MODPY_COMPILEALL} ${PREFIX}/share/dialect/dialect/

.include <bsd.port.mk>
