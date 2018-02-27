# $OpenBSD: Makefile,v 1.2 2018/02/27 21:47:38 espie Exp $

COMMENT =		backport of the get_terminal_size function from shutil

MODPY_EGG_VERSION =	1.0.0
DISTNAME =		backports.shutil_get_terminal_size-${MODPY_EGG_VERSION}
PKGNAME =		py-backports-shutil-get-terminal-size-${MODPY_EGG_VERSION}
CATEGORIES =		devel
REVISION =		0

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		devel/py-backports

TEST_DEPENDS =		devel/py-test

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m pytest

.include <bsd.port.mk>
