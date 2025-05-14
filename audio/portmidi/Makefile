COMMENT =	library for real time input and output of MIDI data

GH_ACCOUNT =	PortMidi
GH_PROJECT =	portmidi
GH_TAGNAME =	v2.0.4

SHARED_LIBS =	portmidi	1.0

EPOCH =		0

CATEGORIES =	audio

# ISC
PERMIT_PACKAGE =	Yes

WANTLIB	=	pthread sndio

MODULES =	devel/cmake

CONFIGURE_ARGS+= -DUSE_SNDIO=ON

NO_TEST =	Yes

FIX_CRLF_FILES = porttime/ptlinux.c

post-extract:
	cp -rf ${FILESDIR}/* ${WRKSRC}/

.include <bsd.port.mk>
