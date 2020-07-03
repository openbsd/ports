# $OpenBSD: Makefile,v 1.8 2020/07/03 21:12:35 sthen Exp $

COMMENT =	Python bindings for PortAudio

MODPY_EGG_VERSION =	0.2.8
DISTNAME =	pyaudio-${MODPY_EGG_VERSION}
PKGNAME =	${DISTNAME:S/py/py-/}
CATEGORIES =	audio devel
REVISION =	2

HOMEPAGE =	http://people.csail.mit.edu/hubert/pyaudio/

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB =	portaudio pthread ${MODPY_WANTLIB}

MASTER_SITES =	${HOMEPAGE}packages/

FLAVOR ?=
FLAVORS =	python3

MODULES =	lang/python

LIB_DEPENDS =	audio/portaudio-svn

WRKDIST =	${WRKDIR}/PyAudio-${MODPY_EGG_VERSION}

.include <bsd.port.mk>
