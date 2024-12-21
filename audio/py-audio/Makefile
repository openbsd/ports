COMMENT =	Python bindings for PortAudio

MODPY_DISTV =	0.2.14
DISTNAME =	PyAudio-${MODPY_DISTV}
PKGNAME =	py-audio-${MODPY_DISTV}
CATEGORIES =	audio devel
REVISION =	1

HOMEPAGE =	http://people.csail.mit.edu/hubert/pyaudio/

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB =	portaudio

MODULES =	lang/python

MODPY_PI =	Yes
MODPY_PYBUILD =	setuptools

MODPY_PYTEST_ARGS =	tests/*

LIB_DEPENDS =	audio/portaudio-svn

.include <bsd.port.mk>
