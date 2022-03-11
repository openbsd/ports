COMMENT =	Python bindings for PortAudio

MODPY_EGG_VERSION =	0.2.11
DISTNAME =	PyAudio-${MODPY_EGG_VERSION}
PKGNAME =	py-audio-${MODPY_EGG_VERSION}
CATEGORIES =	audio devel
REVISION =	1

HOMEPAGE =	http://people.csail.mit.edu/hubert/pyaudio/

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB =	portaudio pthread ${MODPY_WANTLIB}

FLAVOR =	python3
FLAVORS =	python3

MODULES =	lang/python

MODPY_PI =	Yes
MODPY_SETUPTOOLS=	Yes

LIB_DEPENDS =	audio/portaudio-svn

.include <bsd.port.mk>
