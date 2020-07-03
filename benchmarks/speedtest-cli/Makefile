# $OpenBSD: Makefile,v 1.22 2020/07/03 21:12:35 sthen Exp $

COMMENT =		command-line client for speedtest.net bandwidth tester

MODPY_EGG_VERSION =	2.1.2
DISTNAME =		speedtest-cli-${MODPY_EGG_VERSION}
CATEGORIES =		benchmarks net
REVISION =		0

HOMEPAGE =		https://github.com/sivel/speedtest-cli

# Apache 2
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes

MODULES =		lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
MODPY_SETUPTOOLS =	Yes

.include <bsd.port.mk>
