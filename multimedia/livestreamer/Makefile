# $OpenBSD: Makefile,v 1.22 2015/03/23 16:09:39 bcallah Exp $

MODPY_EGG_VERSION =	1.12.1
COMMENT =	pipe video streams into a video player
DISTNAME =	livestreamer-${MODPY_EGG_VERSION}
CATEGORIES =	multimedia net

HOMEPAGE =	http://livestreamer.io/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# BSD
# src/livestreamer/packages/pbs.py: MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_PYPI:=l/livestreamer/}

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =	devel/py-futures \
		devel/py-singledispatch \
		devel/py-six \
		net/rtmpdump \
		security/py-crypto \
		www/py-requests

NO_TEST =	Yes

.include <bsd.port.mk>
