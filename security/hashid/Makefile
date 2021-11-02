# $OpenBSD: Makefile,v 1.3 2021/11/02 00:02:15 sthen Exp $

COMMENT =	Identify the different types of cryptographic hashes

MODPY_EGG_VERSION = 3.1.4
DISTNAME =	hashid-${MODPY_EGG_VERSION}
REVISION =	0

GH_ACCOUNT =    psypanda
GH_PROJECT =    hashID
GH_TAGNAME =	v${MODPY_EGG_VERSION}

CATEGORIES =	security

HOMEPAGE =	https://github.com/psypanda/hashID

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

.include <bsd.port.mk>
