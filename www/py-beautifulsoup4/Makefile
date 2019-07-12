# $OpenBSD: Makefile,v 1.11 2019/07/12 20:51:00 sthen Exp $

COMMENT =	HTML/XML parser that supports invalid markup

MODPY_EGG_VERSION =	4.6.3
DISTNAME =	beautifulsoup4-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	0

CATEGORIES =	www

HOMEPAGE =	http://www.crummy.com/software/BeautifulSoup/
MAINTAINER =	frantisek holop <minusf@obiit.org>

# MIT
PERMIT_PACKAGE =	Yes

MASTER_SITES =	${HOMEPAGE}bs4/download/4.6/

MODULES =	lang/python

TEST_DEPENDS =	devel/py-html5lib${MODPY_FLAVOR} \
		textproc/py-lxml${MODPY_FLAVOR}

FLAVORS =	python3
FLAVOR ?=

MODPY_SETUPTOOLS =	Yes

do-test: fake
	cd ${WRKINST}${MODPY_SITEPKG} && ${MODPY_BIN} -m unittest discover -s bs4

.include <bsd.port.mk>
