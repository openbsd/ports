# $OpenBSD: Makefile,v 1.5 2016/08/28 10:55:38 danj Exp $

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

.if ${FLAVOR:Mpython3}
post-install:
	for i in ${PREFIX}/bin/*; do \
		mv $${i} $${i}${MODPY_BIN_SUFFIX} ;\
	done
.endif

do-test:
	cd ${WRKSRC}/test && ${MODPY_BIN} test.py

.include <bsd.port.mk>
