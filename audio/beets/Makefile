# $OpenBSD: Makefile,v 1.3 2014/10/31 13:39:22 sthen Exp $

COMMENT =	CLI tools to manage music collections

MODPY_EGG_VERSION = 1.3.8
DISTNAME =	beets-${MODPY_EGG_VERSION}
CATEGORIES =	audio

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

HOMEPAGE =	http://beets.radbox.org/

# MIT
PERMIT_PACKAGE_CDROM =  Yes

MASTER_SITES =	${MASTER_SITE_PYPI:=b/beets/}

MODULES =	lang/python
MODPY_SETUPTOOLS = Yes
NO_TEST =	Yes
USE_GROFF =	Yes

RUN_DEPENDS =	audio/py-discogs-client>=2.0.2 \
		audio/py-musicbrainzngs \
		audio/py-last \
		audio/py-mutagen \
		devel/py-algorithm-munkres \
		devel/py-enum34 \
		textproc/py-unidecode \
		textproc/py-yaml \
		www/py-requests

post-install:
	${INSTALL_MAN} ${WRKSRC}/man/beet.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/man/beetsconfig.5 ${PREFIX}/man/man5

.include <bsd.port.mk>
