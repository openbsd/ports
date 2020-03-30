# $OpenBSD: Makefile,v 1.45 2020/03/30 21:38:42 sthen Exp $

COMMENT=	CLI tools to manage music collections

MODPY_EGG_VERSION= 1.4.9
DISTNAME=	beets-${MODPY_EGG_VERSION}
CATEGORIES=	audio
REVISION=	4

HOMEPAGE=	http://beets.io/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_SETUPTOOLS= Yes
MODPY_PI=	Yes
MODPY_PYTEST=	Yes

MODPY_VERSION= ${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS+=	audio/py-discogs-client${MODPY_FLAVOR}>=2.0.2 \
		audio/py-last${MODPY_FLAVOR} \
		audio/py-musicbrainzngs${MODPY_FLAVOR} \
		audio/py-mutagen${MODPY_FLAVOR} \
		devel/py-algorithm-munkres \
		devel/py-pathlib${MODPY_FLAVOR} \
		devel/py-six${MODPY_FLAVOR} \
		devel/py-xdg${MODPY_FLAVOR} \
		textproc/py-jellyfish${MODPY_FLAVOR} \
		textproc/py-unidecode${MODPY_FLAVOR} \
		textproc/py-yaml${MODPY_FLAVOR} \
		www/py-beautifulsoup4${MODPY_FLAVOR} \
		www/py-requests${MODPY_FLAVOR}

post-install:
	${INSTALL_MAN} ${WRKSRC}/man/beet.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/man/beetsconfig.5 ${PREFIX}/man/man5

# also wants responses, rarfile: currently fetches from pypi at test time
PORTHOME=	${WRKDIR}
TEST_DEPENDS=	archivers/py-rarfile${MODPY_FLAVOR} \
		audio/py-mpd2${MODPY_FLAVOR} \
		devel/py-mock${MODPY_FLAVOR} \
		www/py-flask${MODPY_FLAVOR} \
		www/py-responses${MODPY_FLAVOR}

.include <bsd.port.mk>
