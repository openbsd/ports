# $OpenBSD: Makefile,v 1.24 2019/07/12 20:51:02 sthen Exp $

COMMENT =	super-fast templating language

MODPY_EGG_VERSION = 1.0.7
DISTNAME =	Mako-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:L}
REVISION =	0

CATEGORIES =	www

HOMEPAGE =	http://www.makotemplates.org/

# MIT
PERMIT_PACKAGE =	Yes

MODPY_PI =	Yes

MODULES =	lang/python

FLAVORS=	python3
FLAVOR?=

RUN_DEPENDS =	textproc/py-MarkupSafe${MODPY_FLAVOR} \
		www/py-beaker${MODPY_FLAVOR}

TEST_DEPENDS =	devel/py-nose${MODPY_FLAVOR} \
		devel/py-babel${MODPY_FLAVOR}

MODPY_SETUPTOOLS = Yes

post-install:
	mv ${PREFIX}/bin/mako-render \
		${PREFIX}/bin/mako-render${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
