# $OpenBSD: Makefile,v 1.2 2014/09/04 20:38:59 rpe Exp $

COMMENT =		command-line client for speedtest.net bandwidth tester

MODPY_EGG_VERSION =	0.3.1
DISTNAME =		speedtest-cli-${MODPY_EGG_VERSION}
CATEGORIES =		benchmarks net

HOMEPAGE =		https://github.com/sivel/speedtest-cli

# Apache 2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=s/speedtest-cli/}

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

.include <bsd.port.mk>
