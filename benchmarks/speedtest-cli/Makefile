# $OpenBSD: Makefile,v 1.8 2016/12/30 16:13:24 fcambus Exp $

COMMENT =		command-line client for speedtest.net bandwidth tester

MODPY_EGG_VERSION =	1.0.1
DISTNAME =		speedtest-cli-${MODPY_EGG_VERSION}
CATEGORIES =		benchmarks net

HOMEPAGE =		https://github.com/sivel/speedtest-cli

# Apache 2
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes

MODULES =		lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
MODPY_SETUPTOOLS =	Yes

.include <bsd.port.mk>
