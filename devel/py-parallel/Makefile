# $OpenBSD: Makefile,v 1.8 2021/11/02 00:00:59 sthen Exp $

V =		0.2.2
COMMENT =	access to parallel port from Python
DISTNAME =	pyparallel-${V}
PKGNAME =	py-parallel-${V}
CATEGORIES =	devel
REVISION =	4

HOMEPAGE =	https://github.com/pyserial/pyparallel
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://mirrors.nycbug.org/pub/distfiles/

FLAVORS =	python3
FLAVOR =	python3

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes

# No tests upstream

.include <bsd.port.mk>
