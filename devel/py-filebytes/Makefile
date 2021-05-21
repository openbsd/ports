# $OpenBSD: Makefile,v 1.9 2021/05/21 19:50:25 kmos Exp $

COMMENT =	python module to read and write ELF, PE, MachO or OAT

MODPY_EGG_VERSION =	0.9.21
DISTNAME =	filebytes-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	1

CATEGORIES =	devel security

HOMEPAGE =	https://scoding.de/filebytes-introduction

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes

FLAVORS =	python3
FLAVOR ?=

.include <bsd.port.mk>
