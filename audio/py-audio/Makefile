# $OpenBSD: Makefile,v 1.3 2013/03/10 22:55:05 espie Exp $

COMMENT =	Python bindings for PortAudio

MODPY_EGG_VERSION =	0.2.4
DISTNAME =	pyaudio-${MODPY_EGG_VERSION}
PKGNAME =	${DISTNAME:S/py/py-/}
CATEGORIES =	audio devel
REVISION =	0

HOMEPAGE =	http://people.csail.mit.edu/hubert/pyaudio/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${HOMEPAGE}packages/

WANTLIB =	portaudio ${MODPY_WANTLIB}

MODULES =	lang/python

LIB_DEPENDS =	audio/portaudio-svn

WRKDIST =	${WRKDIR}/PyAudio-${MODPY_EGG_VERSION}

.include <bsd.port.mk>
