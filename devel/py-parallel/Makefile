# $OpenBSD: Makefile,v 1.5 2020/07/03 21:12:47 sthen Exp $

V =		0.2.2
COMMENT =	access to parallel port from Python
DISTNAME =	pyparallel-${V}
PKGNAME =	py-parallel-${V}
CATEGORIES =	devel
REVISION =	1

HOMEPAGE =	https://github.com/pyserial/pyparallel
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://mirrors.nycbug.org/pub/distfiles/

FLAVORS =	python3
FLAVOR ?=

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes

# No tests upstream

.include <bsd.port.mk>
