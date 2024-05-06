COMMENT =	ROP gadget finder and binary information tool

MODPY_EGG_VERSION =	1.13.8
DISTNAME =	ropper-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	0

CATEGORIES =	security

HOMEPAGE =	https://scoding.de/ropper/

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# BSD 3-clauses
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_PYBUILD =	setuptools
MODPY_PI =	Yes

RUN_DEPENDS =	devel/py-filebytes${MODPY_FLAVOR} \
		devel/capstone/python${MODPY_FLAVOR} \
		devel/keystone/python${MODPY_FLAVOR}

FLAVORS =	python3
FLAVOR =	python3

# permit installing py- and py3- on same machine
post-install:
	mv ${PREFIX}/bin/ropper ${PREFIX}/bin/ropper${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
