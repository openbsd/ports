# $OpenBSD: Makefile,v 1.1.1.1 2020/06/07 23:24:57 thfr Exp $

COMMENT =	convert .py files to jupyter .ipynb notebooks and vice versa

MODPY_EGG_VERSION =	0.4.5
DISTNAME =	ipynb-py-convert-${MODPY_EGG_VERSION}
CATEGORIES =	www devel
HOMEPAGE =	https://github.com/kiwi0fruit/ipynb-py-convert
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

NO_TEST =	Yes

.include <bsd.port.mk>
