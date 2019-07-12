# $OpenBSD: Makefile,v 1.8 2019/07/12 20:50:13 sthen Exp $

COMMENT =		Python module to validate VAT numbers

MODPY_EGG_VERSION =	1.1
DISTNAME =		vatnumber-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		textproc

HOMEPAGE =		https://vatnumber.googlecode.com/

MAINTAINER =		Christian Rueger <cr+openbsd@rueger-net.de>

# GPLv3
PERMIT_PACKAGE =		Yes

MASTER_SITES =		${HOMEPAGE}files/

MODULES =		lang/python

RUN_DEPENDS =		devel/py-suds

TEST_DEPENDS =	devel/py-suds

MODPY_SETUPTOOLS =	Yes

.include <bsd.port.mk>
