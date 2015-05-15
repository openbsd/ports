# $OpenBSD: Makefile,v 1.8 2015/05/15 13:43:40 sthen Exp $

PORTROACH_COMMENT = 1.3.12+ needs py-jellyfish, waiting on OKs

COMMENT =	CLI tools to manage music collections

MODPY_EGG_VERSION = 1.3.11
DISTNAME =	beets-${MODPY_EGG_VERSION}
CATEGORIES =	audio

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

HOMEPAGE =	http://beets.radbox.org/

# MIT
PERMIT_PACKAGE_CDROM =  Yes

MODPY_PI =	Yes

MODULES =	lang/python
MODPY_SETUPTOOLS = Yes
NO_TEST =	Yes
USE_GROFF =	Yes

RUN_DEPENDS =	audio/py-discogs-client>=2.0.2 \
		audio/py-musicbrainzngs \
		audio/py-last \
		audio/py-mutagen \
		devel/py-algorithm-munkres \
		devel/py-enum34>=1.0.4 \
		textproc/py-unidecode \
		textproc/py-yaml \
		www/py-requests

post-install:
	${INSTALL_MAN} ${WRKSRC}/man/beet.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/man/beetsconfig.5 ${PREFIX}/man/man5

.include <bsd.port.mk>
