COMMENT=	audio player and tagger for GTK+ with regex support

MODPY_DISTV=	4.7.1
DISTNAME=	quodlibet-${MODPY_DISTV}
PORTROACH=	skipv:release-${MODPY_DISTV}

CATEGORIES=	audio

HOMEPAGE=	https://quodlibet.readthedocs.org/

# GPLv2+
PERMIT_PACKAGE=	Yes

SITES=		https://github.com/quodlibet/quodlibet/releases/download/release-${MODPY_DISTV}/

MODULES=	lang/python
#MODPY_ADJ_FILES= *py
MODPY_PYBUILD=	setuptools

BUILD_DEPENDS=	devel/gettext,-tools

# required, from pyproject.toml
RUN_DEPENDS=	audio/py-mutagen \
		textproc/py-feedparser \
		graphics/py-cairo \
		devel/py-gobject3
# optional, from pyproject.toml
# we don't have soco (Sonos plugin), or pypresence (Discord plugin)
RUN_DEPENDS+=	audio/py-musicbrainzngs \
		x11/dbus-python \
		net/py-paho-mqtt

# others
RUN_DEPENDS+=	devel/desktop-file-utils \
		devel/libsoup3 \
		multimedia/gstreamer1/plugins-good>=1.20.3p0 \
		multimedia/gstreamer1/libav \
		multimedia/xine-lib \
		x11/gtk+4,-guic

# tests exist, but use X and don't really run from ports infrastructure
NO_TEST=	Yes

.include <bsd.port.mk>
