# $OpenBSD: Makefile,v 1.19 2019/04/28 20:51:27 sthen Exp $

COMMENT =		command-line client for speedtest.net bandwidth tester

MODPY_EGG_VERSION =	2.1.1
DISTNAME =		speedtest-cli-${MODPY_EGG_VERSION}
CATEGORIES =		benchmarks net
REVISION =		0

HOMEPAGE =		https://github.com/sivel/speedtest-cli

# Apache 2
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes

MODULES =		lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
MODPY_SETUPTOOLS =	Yes

.include <bsd.port.mk>
