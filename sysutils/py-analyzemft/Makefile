# $OpenBSD: Makefile,v 1.2 2019/07/12 20:49:49 sthen Exp $

COMMENT =	parse the MFT file from an NTFS filesystem

MODPY_EGG_VERSION =	2.0.19
DISTNAME =	analyzeMFT-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:L}

CATEGORIES =	sysutils security

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# Common Public License 1.0
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_PI =	Yes

NO_TEST =	Yes

.include <bsd.port.mk>
