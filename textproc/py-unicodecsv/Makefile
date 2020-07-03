# $OpenBSD: Makefile,v 1.4 2020/07/03 21:13:16 sthen Exp $

COMMENT =		drop-in replace for csv with unicode support

MODPY_EGG_VERSION =	0.14.1
DISTNAME =		unicodecsv-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		textproc

HOMEPAGE =		https://github.com/jdunck/python-unicodecsv

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

NO_TEST =		Yes

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
