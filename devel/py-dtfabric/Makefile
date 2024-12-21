COMMENT =	data type fabric

MODPY_DISTV =	20200621
DISTNAME =	dtfabric-${MODPY_DISTV}

PKGNAME =	py-${DISTNAME}
REVISION =	5

CATEGORIES =	devel

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# Apache v2
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_PYBUILD =		setuptools
MODPY_PI =	Yes

RUN_DEPENDS =	textproc/py-yaml

post-install:
	rm -rf ${PREFIX}/share/doc/dtfabric/
	mv ${PREFIX}/bin/validate-definitions.py ${PREFIX}/bin/validate-definitions

.include <bsd.port.mk>
