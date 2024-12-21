COMMENT =	Digital Forensics date and time

MODPY_DISTV =	20200824
DISTNAME =	dfdatetime-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME}
REVISION =	4

CATEGORIES =	security devel

HOMEPAGE =	https://github.com/log2timeline/dfdatetime/wiki

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

SITES =		https://github.com/log2timeline/dfdatetime/releases/download/${MODPY_DISTV}/

# Apachev2
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_PYBUILD =	setuptools

TEST_DEPENDS +=	devel/py-mock

# make it possible to install both (un)FLAVORed packages alongside
post-install:
	rm -rf ${PREFIX}/share/doc/dfdatetime/

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} run_tests.py

.include <bsd.port.mk>
