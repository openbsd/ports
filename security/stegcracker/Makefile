# $OpenBSD: Makefile,v 1.1.1.1 2021/01/01 14:04:38 sebastia Exp $

COMMENT =	brute-force steganography

MODPY_EGG_VERSION =	2.0.9
DISTNAME =	stegcracker-${MODPY_EGG_VERSION}

CATEGORIES =	security

HOMEPAGE =	https://github.com/Paradoxis/StegCracker

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS =		security/steghide

.include <bsd.port.mk>
