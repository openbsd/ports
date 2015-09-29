# $OpenBSD: Makefile,v 1.4 2015/09/29 09:02:55 edd Exp $

COMMENT =		Python module to read and work with PE files

MODPY_EGG_VERSION =	1.2.10.post139
REVISION =		0
DISTNAME =		pefile-1.2.10-139
PKGNAME =		py-pefile-1.2.10.139

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
BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS +=		devel/py-setuptools>=18.2v0

NO_TEST =		Yes

.include <bsd.port.mk>
