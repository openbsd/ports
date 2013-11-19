# $OpenBSD: Makefile,v 1.1.1.1 2013/11/19 17:59:01 sthen Exp $

COMMENT =		command-line client for speedtest.net bandwidth tester

MODPY_EGG_VERSION =	0.2.2
DISTNAME =		speedtest-cli-${MODPY_EGG_VERSION}
CATEGORIES =		benchmarks net

HOMEPAGE =		https://github.com/sivel/speedtest-cli

# Apache 2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=s/speedtest-cli/}

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

.include <bsd.port.mk>
