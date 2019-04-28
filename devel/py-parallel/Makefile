# $OpenBSD: Makefile,v 1.2 2019/04/28 20:51:35 sthen Exp $

V =		0.2.2
COMMENT =	access to parallel port from Python
DISTNAME =	pyparallel-${V}
PKGNAME =	py-parallel-${V}
CATEGORIES =	devel
REVISION =	0

HOMEPAGE =	https://github.com/pyserial/pyparallel
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://mirrors.nycbug.org/pub/distfiles/

FLAVORS =	python3
FLAVOR ?=

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes

.include <bsd.port.mk>
