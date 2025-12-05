COMMENT =	library for real time input and output of MIDI data

GH_ACCOUNT =	PortMidi
GH_PROJECT =	portmidi
GH_TAGNAME =	v2.0.8

SHARED_LIBS =	portmidi	2.0

EPOCH =		0

CATEGORIES =	audio

# ISC
PERMIT_PACKAGE =	Yes

WANTLIB	=	pthread sndio

MODULES =	devel/cmake

CONFIGURE_ARGS+= -DUSE_SNDIO=ON

NO_TEST =	Yes

.include <bsd.port.mk>
