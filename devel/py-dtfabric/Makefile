COMMENT =	data type fabric

REVISION =	1
MODPY_DISTV =	20251118
DISTNAME =	dtfabric-${MODPY_DISTV}

PKGNAME =	py-${DISTNAME}

CATEGORIES =	devel

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# Apache v2
PERMIT_PACKAGE =Yes

MODULES =	lang/python
MODPY_PYBUILD =	setuptools
MODPY_PI =	Yes

RUN_DEPENDS =	textproc/py-yaml

post-install:
	rm -rf ${PREFIX}/share/doc/dtfabric/
	mv ${PREFIX}/bin/validate-definitions.py ${PREFIX}/bin/validate-definitions

.include <bsd.port.mk>
