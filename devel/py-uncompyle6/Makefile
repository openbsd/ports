# $OpenBSD: Makefile,v 1.5 2016/11/04 07:13:36 shadchin Exp $

COMMENT =		Python cross-version byte-code deparser

MODPY_EGG_VERSION =	2.9.4
DISTNAME =		uncompyle6-${MODPY_EGG_VERSION}
PKGNAME =		py-uncompyle6-${MODPY_EGG_VERSION}
CATEGORIES =		devel

HOMEPAGE =		https://github.com/rocky/python-uncompyle6/

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

RUN_DEPENDS =		devel/py-spark-parser${MODPY_FLAVOR} \
			devel/py-xdis${MODPY_FLAVOR}
BUILD_DEPENDS =		devel/py-nose${MODPY_FLAVOR}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

NO_TEST =		Yes

.if ${FLAVOR:Mpython3}
post-install:
	mv ${PREFIX}/bin/pydisassemble ${PREFIX}/bin/pydisassemble${MODPY_BIN_SUFFIX}
	mv ${PREFIX}/bin/uncompyle6 ${PREFIX}/bin/uncompyle6${MODPY_BIN_SUFFIX}
.endif

.include <bsd.port.mk>
