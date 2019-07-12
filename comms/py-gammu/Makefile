# $OpenBSD: Makefile,v 1.10 2019/07/12 20:43:48 sthen Exp $

COMMENT =		python bindings for Gammu

MODPY_EGG_VERSION = 	2.12
DISTNAME =		python-gammu-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/python/py/}

CATEGORIES =		comms

HOMEPAGE =		https://wammu.eu/

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += Gammu gsmsd m pthread ${MODPY_WANTLIB}

MASTER_SITES =		https://dl.cihar.com/python-gammu/

MODULES =		lang/python
LIB_DEPENDS =		comms/gammu

SEPARATE_BUILD = 	Yes

MODPY_SETUPTOOLS = 	Yes

TEST_IS_INTERACTIVE =	Yes

.include <bsd.port.mk>
