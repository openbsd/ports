# $OpenBSD: Makefile,v 1.4 2015/09/29 10:52:34 sthen Exp $

COMMENT =		toolkit for safe and simple cryptography

MODPY_EGG_VERSION =	0.715
DISTNAME =		python-keyczar-${MODPY_EGG_VERSION}
PKGNAME =		py-keyczar-${MODPY_EGG_VERSION}
EPOCH =			0
REVISION =		0

CATEGORIES =		security

HOMEPAGE =		http://www.keyczar.org/

MAINTAINER =		Robert Peichaer <rpe@openbsd.org>

# Apache2
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		devel/py-asn1 \
			security/py-crypto

TEST_DEPENDS =		${RUN_DEPENDS}

do-test:
	cd ${WRKSRC}/tests/keyczar_tests/ && \
	${SETENV} ${MAKE_ENV} ${MODPY_BIN} alltests.py


.include <bsd.port.mk>
