# $OpenBSD: Makefile,v 1.20 2016/12/16 11:22:39 sthen Exp $

COMMENT =	CLI tools to manage music collections

MODPY_EGG_VERSION = 1.4.1
DISTNAME =	beets-${MODPY_EGG_VERSION}
CATEGORIES =	audio

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

HOMEPAGE =	http://beets.io/

# MIT
PERMIT_PACKAGE_CDROM =  Yes

MODULES =	lang/python
MODPY_SETUPTOOLS = Yes
MODPY_PI =	Yes
NO_TEST =	Yes
USE_GROFF =	Yes

# py3 support is currently experimental; packagers are requested not
# to use it yet.
# MODPY_VERSION = ${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS =	audio/py-discogs-client${MODPY_FLAVOR}>=2.0.2 \
		audio/py-last${MODPY_FLAVOR} \
		audio/py-mutagen${MODPY_FLAVOR} \
		devel/py-six${MODPY_FLAVOR} \
		textproc/py-jellyfish${MODPY_FLAVOR} \
		textproc/py-unidecode${MODPY_FLAVOR} \
		textproc/py-yaml${MODPY_FLAVOR} \
		www/py-requests${MODPY_FLAVOR}

# need py3 flavours for these before we can switch
RUN_DEPENDS +=	audio/py-musicbrainzngs${MODPY_FLAVOR} \
		devel/py-algorithm-munkres${MODPY_FLAVOR}

# remove when switching to py3
RUN_DEPENDS+=	devel/py-enum34>=1.0.4

post-install:
	${INSTALL_MAN} ${WRKSRC}/man/beet.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/man/beetsconfig.5 ${PREFIX}/man/man5

.include <bsd.port.mk>
