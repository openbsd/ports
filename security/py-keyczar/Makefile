# $OpenBSD: Makefile,v 1.1.1.1 2014/03/09 23:44:51 rpe Exp $

COMMENT =		toolkit for safe and simple cryptography

MODPY_EGG_VERSION =	0.71c
DISTNAME =		python-keyczar-${MODPY_EGG_VERSION}
PKGNAME =		py-keyczar-${MODPY_EGG_VERSION}

CATEGORIES =		security

HOMEPAGE =		http://www.keyczar.org/

MAINTAINER =		Robert Peichaer <rpe@openbsd.org>

# Apache2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=p/python-keyczar/}

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		devel/py-asn1 \
			security/py-crypto

TEST_DEPENDS =		${RUN_DEPENDS}

do-test:
	cd ${WRKSRC}/tests/keyczar_tests/ && \
	${SETENV} ${MAKE_ENV} ${MODPY_BIN} alltests.py


.include <bsd.port.mk>
