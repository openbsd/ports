COMMENT=	CLI tools to manage music collections

MODPY_EGG_VERSION= 2.1.0
DISTNAME=	beets-${MODPY_EGG_VERSION}
CATEGORIES=	audio

HOMEPAGE=	https://beets.io/

MAINTAINER=	Kirill A. Korinsky <kirill@korins.ky>

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	poetry-core
MODPY_PI=	Yes

# no tests in pypi package
NO_TEST=	Yes

RUN_DEPENDS+=	textproc/py-confuse${MODPY_FLAVOR} \
		textproc/py-jellyfish${MODPY_FLAVOR} \
		audio/py-mediafile${MODPY_FLAVOR} \
		devel/py-algorithm-munkres${MODPY_FLAVOR} \
		audio/py-musicbrainzngs${MODPY_FLAVOR} \
		sysutils/py-platformdirs${MODPY_FLAVOR} \
		textproc/py-yaml${MODPY_FLAVOR} \
		textproc/py-unidecode${MODPY_FLAVOR} \
		www/py-beautifulsoup4${MODPY_FLAVOR} \
		textproc/py-langdetect${MODPY_FLAVOR} \
		audio/py-mutagen${MODPY_FLAVOR} \
		graphics/py-Pillow${MODPY_FLAVOR} \
		audio/py-acoustid${MODPY_FLAVOR} \
		audio/py-last${MODPY_FLAVOR} \
		audio/py-discogs-client${MODPY_FLAVOR} \
		devel/py-xdg${MODPY_FLAVOR} \
		archivers/py-rarfile${MODPY_FLAVOR} \
		www/py-requests${MODPY_FLAVOR} \
		www/py-requests-oauthlib${MODPY_FLAVOR}

.include <bsd.port.mk>
