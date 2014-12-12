# $OpenBSD: Makefile,v 1.18 2014/12/12 01:53:46 bcallah Exp $

MODPY_EGG_VERSION =	1.11.0
COMMENT =	pipe video streams into a video player
DISTNAME =	livestreamer-${MODPY_EGG_VERSION}
REVISION =	0
CATEGORIES =	multimedia net

HOMEPAGE =	http://livestreamer.tanuki.se/
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
