# $OpenBSD: Makefile,v 1.26 2015/09/29 10:52:29 sthen Exp $

MODPY_EGG_VERSION =	1.12.2
COMMENT =	pipe video streams into a video player
DISTNAME =	livestreamer-${MODPY_EGG_VERSION}
CATEGORIES =	multimedia net
REVISION =	1

HOMEPAGE =	http://livestreamer.io/

# BSD
# src/livestreamer/packages/pbs.py: MIT
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =	Yes

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
