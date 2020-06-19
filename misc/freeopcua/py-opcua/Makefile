# $OpenBSD: Makefile,v 1.2 2020/06/19 16:14:57 bluhm Exp $

COMMENT =	pure Python OPC UA client and server library

MODPY_EGG_VERSION =	0.98.11

DISTNAME =	opcua-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	misc

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# LGPLv3+
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

RUN_DEPENDS =		devel/py-dateutil${MODPY_FLAVOR} \
			devel/py-tz${MODPY_FLAVOR} \
			security/py-cryptography${MODPY_FLAVOR} \
			textproc/py-lxml${MODPY_FLAVOR}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR =		python3

# this file cannot be imported and does not exist in the github repository
post-extract:
	rm -- ${WRKDIST}/opcua/ua/extension_objects.py

.include <bsd.port.mk>
