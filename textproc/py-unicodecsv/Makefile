# $OpenBSD: Makefile,v 1.1.1.1 2017/11/30 20:13:31 jasper Exp $

COMMENT =		drop-in replace for csv with unicode support

MODPY_EGG_VERSION =	0.14.1
DISTNAME =		unicodecsv-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		textproc

HOMEPAGE =		https://github.com/jdunck/python-unicodecsv

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

NO_TEST =		Yes

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
