# $OpenBSD: Makefile,v 1.1.1.1 2013/11/01 17:45:20 fgsch Exp $

COMMENT =		send files to the trash natively

MODPY_EGG_VERSION =	1.3.0
DISTNAME =		Send2Trash-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:L}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/hsoft/send2trash

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=S/Send2Trash/}

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes

.include <bsd.port.mk>
