# $OpenBSD: Makefile,v 1.4 2013/03/11 11:42:46 espie Exp $

COMMENT =		Python module to validate VAT numbers

MODPY_EGG_VERSION =	1.0
DISTNAME =		vatnumber-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		textproc

HOMEPAGE =		http://vatnumber.googlecode.com/

MAINTAINER =		Christian Rueger <cr+openbsd@rueger-net.de>

# GPLv3
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES =		${HOMEPAGE}files/

MODULES =		lang/python

RUN_DEPENDS =		devel/py-suds

TEST_DEPENDS =	devel/py-suds

MODPY_SETUPTOOLS =	Yes

.include <bsd.port.mk>
