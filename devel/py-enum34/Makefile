# $OpenBSD: Makefile,v 1.4 2015/12/29 05:15:12 shadchin Exp $

COMMENT =	Python 3.4 Enum backported to previous versions

MODPY_EGG_VERSION = 1.1.2
DISTNAME =	enum34-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	devel

HOMEPAGE =	https://pypi.python.org/pypi/enum34

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =	Yes

MODULES =	lang/python

post-install:
	mv ${WRKINST}${MODPY_SITEPKG}/enum/doc ${PREFIX}/share/doc/py-enum34
	mv ${WRKINST}${MODPY_SITEPKG}/enum/LICENSE ${PREFIX}/share/doc/py-enum34
	mv ${WRKINST}${MODPY_SITEPKG}/enum/README ${PREFIX}/share/doc/py-enum34

do-test:
	cd ${WRKSRC} && env PYTHONPATH=${WRKSRC} ${MODPY_BIN} enum/test_enum.py

.include <bsd.port.mk>
