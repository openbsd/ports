COMMENT=	CLI tools to manage music collections

MODPY_DISTV=	2.4.0
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
		math/py-lap \
		audio/py-mediafile \
		audio/py-musicbrainzngs \
		math/py-numpy \
		sysutils/py-platformdirs \
		textproc/py-yaml \
		devel/py-typing-extensions \
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
