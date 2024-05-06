COMMENT =	extracts the top level domain (TLD) from the URL given

MODPY_EGG_VERSION =	0.13
DISTNAME =	tld-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	0

CATEGORIES =	net

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# MPL 1.1/GPL 2.0/LGPL 2.1
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_PYBUILD =	setuptools_scm
MODPY_PI =	Yes
# requires Faker (not in ports)
NO_TEST =	Yes

FLAVORS =	python3
FLAVOR =	python3

.include <bsd.port.mk>
