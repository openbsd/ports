# $OpenBSD: Makefile,v 1.4 2017/06/21 01:03:28 kirby Exp $

COMMENT =		python bindings for Gammu

MODPY_EGG_VERSION = 	2.9
DISTNAME =		python-gammu-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/python/py/}

CATEGORIES =		comms

HOMEPAGE =		http://wammu.eu/

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += Gammu gsmsd m pthread ${MODPY_WANTLIB}

MASTER_SITES =		http://dl.cihar.com/python-gammu/

MODULES =		lang/python
LIB_DEPENDS =		comms/gammu

SEPARATE_BUILD = 	Yes

MODPY_SETUPTOOLS = 	Yes

TEST_IS_INTERCATIVE =	Yes

.include <bsd.port.mk>
