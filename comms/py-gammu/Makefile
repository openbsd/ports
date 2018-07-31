# $OpenBSD: Makefile,v 1.7 2018/07/31 11:44:34 kirby Exp $

COMMENT =		python bindings for Gammu

MODPY_EGG_VERSION = 	2.11
DISTNAME =		python-gammu-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/python/py/}
REVISION = 		0

CATEGORIES =		comms

HOMEPAGE =		https://wammu.eu/

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += Gammu gsmsd m pthread ${MODPY_WANTLIB}

MASTER_SITES =		https://dl.cihar.com/python-gammu/

MODULES =		lang/python
LIB_DEPENDS =		comms/gammu

SEPARATE_BUILD = 	Yes

MODPY_SETUPTOOLS = 	Yes

TEST_IS_INTERCATIVE =	Yes

.include <bsd.port.mk>
