COMMENT=	CLI tools to manage music collections

MODPY_DISTV=	2.2.0
DISTNAME=	beets-${MODPY_DISTV}
CATEGORIES=	audio
REVISION=	0

HOMEPAGE=	https://beets.io/

MAINTAINER=	Kirill A. Korinsky <kirill@korins.ky>

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	poetry-core
MODPY_PI=	Yes

RUN_DEPENDS+=	textproc/py-confuse \
		textproc/py-jellyfish \
		audio/py-mediafile \
		devel/py-algorithm-munkres \
		audio/py-musicbrainzngs \
		sysutils/py-platformdirs \
		textproc/py-yaml \
		textproc/py-unidecode \
		www/py-beautifulsoup4 \
		textproc/py-langdetect \
		audio/py-mutagen \
		graphics/py-Pillow \
		audio/py-acoustid \
		audio/py-last \
		audio/py-discogs-client \
		devel/py-xdg \
		archivers/py-rarfile \
		www/py-requests \
		www/py-requests-oauthlib

# Some tests are failed:
#  - https://github.com/beetbox/beets/issues/5526
#  - https://github.com/beetbox/beets/issues/5527
TEST_DEPENDS=	archivers/py-rarfile \
		audio/py-mpd2 \
		devel/py-mock \
		devel/py-test-cov \
		www/py-flask \
		www/py-requests-oauthlib \
		www/py-responses

# needs for tests
PORTHOME=	${WRKDIR}

post-install:
	${INSTALL_DATA} ${WRKSRC}/man/beet.1 ${PREFIX}/man/man1
	${INSTALL_DATA} ${WRKSRC}/man/beetsconfig.5 ${PREFIX}/man/man5

.include <bsd.port.mk>
