# $OpenBSD: Makefile,v 1.1.1.1 2013/09/07 19:50:56 bcallah Exp $

MODPY_EGG_VERSION =	1.5.2
COMMENT =	pipe video streams into a video player
DISTNAME =	livestreamer-${MODPY_EGG_VERSION}
DISTFILES =	livestreamer-${MODPY_EGG_VERSION}.tar.gz{v${MODPY_EGG_VERSION}.tar.gz}
CATEGORIES =	multimedia net

HOMEPAGE =	http://livestreamer.tanuki.se/

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# BSD
# src/livestreamer/packages/pbs.py: MIT
# src/livestreamer/plugins/gomtv.py: Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://github.com/chrippa/livestreamer/archive/

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =	net/rtmpdump \
		security/py-crypto \
		www/py-requests

# Needed for 'make clean' to work for non-root user.
post-install:
	chmod g+w ${WRKSRC}/src/livestreamer.egg-info

.include <bsd.port.mk>
