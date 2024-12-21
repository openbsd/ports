COMMENT =	ROP gadget finder and binary information tool

MODPY_DISTV =	1.13.8
DISTNAME =	ropper-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME}
REVISION =	1

CATEGORIES =	security

HOMEPAGE =	https://scoding.de/ropper/

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# BSD 3-clauses
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_PYBUILD =	setuptools
MODPY_PI =	Yes

RUN_DEPENDS =	devel/py-filebytes \
		devel/capstone/python \
		devel/keystone/python

.include <bsd.port.mk>
