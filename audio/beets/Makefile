# $OpenBSD: Makefile,v 1.26 2017/06/28 17:59:31 sthen Exp $

COMMENT =	CLI tools to manage music collections

MODPY_EGG_VERSION = 1.4.5
DISTNAME =	beets-${MODPY_EGG_VERSION}
CATEGORIES =	audio

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

HOMEPAGE =	http://beets.io/

# MIT
PERMIT_PACKAGE_CDROM =  Yes

MODULES =	lang/python
MODPY_SETUPTOOLS = Yes
MODPY_PI =	Yes

# not yet:
# MODPY_VERSION = ${MODPY_DEFAULT_VERSION_3}

# remove when switching to py3
RUN_DEPENDS+=	devel/py-enum34>=1.0.4

RUN_DEPENDS+=	audio/py-discogs-client${MODPY_FLAVOR}>=2.0.2 \
		audio/py-last${MODPY_FLAVOR} \
		audio/py-musicbrainzngs${MODPY_FLAVOR} \
		audio/py-mutagen${MODPY_FLAVOR} \
		devel/py-algorithm-munkres${MODPY_FLAVOR} \
		devel/py-six${MODPY_FLAVOR} \
		textproc/py-jellyfish${MODPY_FLAVOR} \
		textproc/py-unidecode${MODPY_FLAVOR} \
		textproc/py-yaml${MODPY_FLAVOR} \
		www/py-requests${MODPY_FLAVOR}

post-install:
	${INSTALL_MAN} ${WRKSRC}/man/beet.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/man/beetsconfig.5 ${PREFIX}/man/man5

# also wants responses, rarfile: currently fetches from pypi at test time
TEST_DEPENDS=	${RUN_DEPENDS} \
		audio/py-mpd2${MODPY_FLAVOR} \
		devel/py-mock${MODPY_FLAVOR} \
		devel/py-xdg${MODPY_FLAVOR} \
		www/py-beautifulsoup4${MODPY_FLAVOR} \
		www/py-flask${MODPY_FLAVOR}

do-test:
	${MODPY_TEST_TARGET}

.include <bsd.port.mk>
