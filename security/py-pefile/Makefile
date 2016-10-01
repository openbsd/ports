# $OpenBSD: Makefile,v 1.7 2016/10/01 11:54:17 naddy Exp $

COMMENT =		Python module to read and work with PE files

MODPY_EGG_VERSION =	1.2.10.post139
REVISION =		2
DISTNAME =		pefile-1.2.10-139
PKGNAME =		py-pefile-1.2.10.139

CATEGORIES =		security

HOMEPAGE =		https://github.com/erocarrera/pefile

MAINTAINER =		Remi Pointel <rpointel@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_GOOGLECODE:=pefile/}

MODULES =		lang/python
MODPY_SETUPTOOLS = 	Yes

NO_TEST =		Yes

.include <bsd.port.mk>
