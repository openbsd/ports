# $OpenBSD: Makefile,v 1.1.1.1 2014/05/22 14:16:55 sthen Exp $

COMMENT =	CLI tools to manage music collections

MODPY_EGG_VERSION = 1.3.6
DISTNAME =	beets-${MODPY_EGG_VERSION}
CATEGORIES =	audio

HOMEPAGE =	http://beets.radbox.org/

# MIT
PERMIT_PACKAGE_CDROM =  Yes

MASTER_SITES =	${MASTER_SITE_PYPI:=b/beets/}

MODULES =	lang/python
MODPY_SETUPTOOLS = Yes
NO_TEST =	Yes
USE_GROFF =	Yes

RUN_DEPENDS =	audio/py-musicbrainzngs \
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
