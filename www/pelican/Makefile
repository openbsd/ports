# $OpenBSD: Makefile,v 1.1.1.1 2015/07/10 17:16:27 ajacoutot Exp $

COMMENT =		static site generator written in Python

MODPY_EGG_VERSION =	${GH_TAGNAME}
DISTNAME =		pelican-${MODPY_EGG_VERSION}

GH_ACCOUNT =		getpelican
GH_PROJECT =		pelican
GH_TAGNAME =		3.5.0

CATEGORIES =		www

HOMEPAGE =		http://blog.getpelican.com/

MAINTAINER =		Vladimir Seleznev <vseleznv@cs.msu.ru>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
RUN_DEPENDS =		devel/py-blinker \
			devel/py-dateutil \
			textproc/markdown \
			textproc/py-docutils \
			textproc/py-pygments \
			textproc/py-unidecode \
			www/py-feedgenerator \
			www/py-jinja2

TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/py-mock

.include <bsd.port.mk>
