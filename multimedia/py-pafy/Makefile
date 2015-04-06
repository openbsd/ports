# $OpenBSD: Makefile,v 1.1.1.1 2015/04/06 01:36:04 bcallah Exp $

MODPY_EGG_VERSION =	0.3.72
COMMENT =	download YouTube content and retrieve metadata
DISTNAME =	Pafy-${MODPY_EGG_VERSION}
PKGNAME =	py-pafy-${MODPY_EGG_VERSION}
CATEGORIES =	multimedia

HOMEPAGE =	http://np1.github.io/pafy/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# LGPLv3+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_PYPI:=p/pafy/}

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes

.include <bsd.port.mk>
