# $OpenBSD: Makefile,v 1.5 2019/04/28 20:51:33 sthen Exp $

COMMENT =	python module to read and write ELF, PE, MachO or OAT

MODPY_EGG_VERSION =	0.9.18
DISTNAME =	filebytes-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	0

CATEGORIES =	devel security

HOMEPAGE =	https://scoding.de/filebytes-introduction

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes

FLAVORS =	python3
FLAVOR ?=

.include <bsd.port.mk>
