# $OpenBSD: Makefile,v 1.57 2021/11/29 17:32:28 ajacoutot Exp $

COMMENT=	CLI tools to manage music collections

MODPY_EGG_VERSION= 1.6.0
DISTNAME=	beets-${MODPY_EGG_VERSION}
CATEGORIES=	audio

HOMEPAGE=	https://beets.io/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_SETUPTOOLS= Yes
MODPY_PI=	Yes
MODPY_PYTEST=	Yes

# /bin/tar doesn't handle timestamps, breaking some tests
TAR=		gtar
BUILD_DEPENDS=	archivers/gtar

RUN_DEPENDS+=	audio/py-discogs-client${MODPY_FLAVOR}>=2.0.2 \
		audio/py-last${MODPY_FLAVOR} \
		audio/py-mediafile${MODPY_FLAVOR} \
		audio/py-musicbrainzngs${MODPY_FLAVOR} \
		audio/py-mutagen${MODPY_FLAVOR} \
		devel/py-algorithm-munkres${MODPY_FLAVOR} \
		devel/py-xdg${MODPY_FLAVOR} \
		textproc/py-confuse${MODPY_FLAVOR} \
		textproc/py-jellyfish${MODPY_FLAVOR} \
		textproc/py-unidecode${MODPY_FLAVOR} \
		textproc/py-yaml${MODPY_FLAVOR} \
		www/py-beautifulsoup4${MODPY_FLAVOR} \
		www/py-requests${MODPY_FLAVOR}

post-install:
	${INSTALL_MAN} ${WRKSRC}/man/beet.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/man/beetsconfig.5 ${PREFIX}/man/man5

PORTHOME=	${WRKDIR}
TEST_DEPENDS=	archivers/py-rarfile${MODPY_FLAVOR} \
		audio/py-mpd2${MODPY_FLAVOR} \
		devel/py-mock${MODPY_FLAVOR} \
		www/py-flask${MODPY_FLAVOR} \
		www/py-requests-oauthlib${MODPY_FLAVOR} \
		www/py-responses${MODPY_FLAVOR}

.include <bsd.port.mk>
