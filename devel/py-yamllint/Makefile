COMMENT =	linter for YAML files

MODPY_DISTV =	1.35.1
DISTNAME =	yamllint-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME}
REVISION =	0

CATEGORIES =	devel

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_PI =	Yes
MODPY_PYBUILD =	setuptools

RUN_DEPENDS =	devel/py-pathspec \
		textproc/py-yaml

.include <bsd.port.mk>
