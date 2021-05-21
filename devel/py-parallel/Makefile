# $OpenBSD: Makefile,v 1.6 2021/05/21 19:50:27 kmos Exp $

V =		0.2.2
COMMENT =	access to parallel port from Python
DISTNAME =	pyparallel-${V}
PKGNAME =	py-parallel-${V}
CATEGORIES =	devel
REVISION =	2

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
