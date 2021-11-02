# $OpenBSD: Makefile,v 1.10 2021/11/02 00:00:48 sthen Exp $

COMMENT =	data type fabric

MODPY_EGG_VERSION =	20200621
DISTNAME =	dtfabric-${MODPY_EGG_VERSION}

PKGNAME =	py-${DISTNAME}
REVISION =	1

CATEGORIES =	devel

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# Apache v2
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =	Yes

RUN_DEPENDS =	textproc/py-yaml${MODPY_FLAVOR}

FLAVORS =	python3
FLAVOR =	python3

# make it possible to install both (un)FLAVORed packages alongside
post-install:
	rm -rf ${PREFIX}/share/doc/dtfabric/
	mv ${PREFIX}/bin/validate-definitions.py ${PREFIX}/bin/validate-definitions${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
