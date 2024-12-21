COMMENT=	audio player and tagger for GTK+ with regex support

MODPY_DISTV=	4.6.0
DISTNAME=	quodlibet-${MODPY_DISTV}
PORTROACH=	skipv:release-${MODPY_DISTV}
REVISION=	3

CATEGORIES=	audio

HOMEPAGE=	https://quodlibet.readthedocs.org/

# GPLv2+
PERMIT_PACKAGE=	Yes

SITES=		https://github.com/quodlibet/quodlibet/releases/download/release-${MODPY_DISTV}/

MODULES=	lang/python
MODPY_ADJ_FILES= *py
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	audio/py-musicbrainzngs \
		audio/py-mutagen \
		devel/py-gobject3 \
		graphics/py-cairo \
		textproc/py-feedparser \
		x11/dbus-python

# others
RUN_DEPENDS+=	devel/desktop-file-utils \
		devel/libsoup3 \
		multimedia/gstreamer1/plugins-good>=1.20.3p0 \
		multimedia/gstreamer1/plugins-libav \
		multimedia/xine-lib \
		x11/gtk+4,-guic

BUILD_DEPENDS=	${RUN_DEPENDS} \
		devel/gettext,-runtime \
		devel/gettext,-tools

post-install:
	mv ${PREFIX}/share/man/man1/* ${PREFIX}/man/man1/
	rmdir ${PREFIX}/share/man{/man1,}

do-test:
	cd ${WRKSRC}; ${MODPY_BIN} ./setup.py test

.include <bsd.port.mk>
