# $OpenBSD: Makefile,v 1.2 2020/07/03 21:13:17 sthen Exp $

COMMENT =	convert .py files to jupyter .ipynb notebooks and vice versa

MODPY_EGG_VERSION =	0.4.5
DISTNAME =	ipynb-py-convert-${MODPY_EGG_VERSION}
CATEGORIES =	www devel
HOMEPAGE =	https://github.com/kiwi0fruit/ipynb-py-convert
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>
REVISION =	0

# MIT
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

NO_TEST =	Yes

.include <bsd.port.mk>
