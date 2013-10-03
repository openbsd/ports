# $OpenBSD: Makefile,v 1.2 2013/10/03 16:37:17 dcoppa Exp $

COMMENT =		Python module to read and work with PE files

MODPY_EGG_VERSION =	1.2.10-123
DISTNAME =		pefile-${MODPY_EGG_VERSION}
PKGNAME =		py-pefile-${MODPY_EGG_VERSION:S/-/./}

CATEGORIES =		security

HOMEPAGE =		https://code.google.com/p/pefile/

MAINTAINER =		Remi Pointel <rpointel@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		https://pefile.googlecode.com/files/

MODULES =		lang/python
MODPY_SETUPTOOLS = 	Yes

NO_TEST =		Yes

.include <bsd.port.mk>
