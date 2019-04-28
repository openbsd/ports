# $OpenBSD: Makefile,v 1.15 2019/04/28 20:51:36 sthen Exp $

COMMENT =		Radix tree implementation for Python

MODPY_EGG_VERSION = 	0.10.0
DISTNAME =		py-radix-${MODPY_EGG_VERSION}
CATEGORIES=		devel net
REVISION =		0

HOMEPAGE =		https://github.com/mjschultz/py-radix/

MAINTAINER =		Job Snijders <job@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS=		python3
FLAVOR?=

MODULES =		lang/python
WANTLIB +=		${MODPY_WANTLIB} pthread

TEST_DEPENDS =		devel/py-nose${MODPY_FLAVOR} \
			devel/py-coverage${MODPY_FLAVOR}

do-test:
	@cd ${WRKSRC} && ${MODPY_BIN} setup.py nosetests

.include <bsd.port.mk>
