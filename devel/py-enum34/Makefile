# $OpenBSD: Makefile,v 1.7 2019/05/13 18:06:43 danj Exp $

COMMENT =		Python 3.4 Enum backported to previous versions

MODPY_EGG_VERSION =	1.1.6
DISTNAME =		enum34-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		devel

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes

post-install:
	mv ${WRKINST}${MODPY_SITEPKG}/enum/doc ${PREFIX}/share/doc/py-enum34
	mv ${WRKINST}${MODPY_SITEPKG}/enum/LICENSE ${PREFIX}/share/doc/py-enum34
	mv ${WRKINST}${MODPY_SITEPKG}/enum/README ${PREFIX}/share/doc/py-enum34

do-test:
	cd ${WRKSRC} && env PYTHONPATH=${WRKSRC} ${MODPY_BIN} -m unittest discover

.include <bsd.port.mk>
