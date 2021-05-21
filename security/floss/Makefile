# $OpenBSD: Makefile,v 1.6 2021/05/21 19:50:34 kmos Exp $

COMMENT =	FireEye Labs Obfuscated String Solver

MODPY_EGG_VERSION =	1.6.1
PKGNAME =	floss-${MODPY_EGG_VERSION}
REVISION =	0

GH_ACCOUNT =	fireeye
GH_PROJECT =	flare-floss
GH_TAGNAME =	v${MODPY_EGG_VERSION}

CATEGORIES =	security

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# Apache v2
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =	textproc/py-yaml \
		devel/py-simplejson \
		devel/py-tabulate \
		security/py-vivisect \
		devel/py-plugnplay \
		security/py-viv_utils \
		devel/py-enum34

TEST_DEPENDS =	devel/py-test

NO_TEST =	Yes

.include <bsd.port.mk>
