# $OpenBSD: Makefile,v 1.6 2016/11/10 21:58:40 danj Exp $

COMMENT =	bash tab completion for argparse

MODPY_EGG_VERSION =	1.4.1
DISTNAME =	argcomplete-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
CATEGORIES =	devel

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

MODULES =	lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

post-install:
	for i in ${PREFIX}/bin/*; do \
		mv $${i} $${i}${MODPY_BIN_SUFFIX} ;\
	done

do-test:
	cd ${WRKSRC}/test && ${MODPY_BIN} test.py

.include <bsd.port.mk>
