# $OpenBSD: Makefile,v 1.3 2019/07/12 20:43:39 sthen Exp $

COMMENT =	library for real time input and output of MIDI data

DISTNAME =	portmidi-src-217
PKGNAME =	portmidi-217
REVISION =	0

SHARED_LIBS =	portmidi	0.0

CATEGORIES =	audio

HOMEPAGE =	http://portmedia.sourceforge.net/

# ISC
PERMIT_PACKAGE =	Yes

WANTLIB	=	pthread sndio

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=portmedia/}
EXTRACT_SUFX =	.zip

MODULES =       devel/cmake

CONFIGURE_ARGS+= -DPROJECT_BINARY_DIR=Release \
		-DCMAKE_ARCHIVE_OUTPUT_DIRECTORY=${WRKBUILD}/Release \
		-DCMAKE_LIBRARY_OUTPUT_DIRECTORY=${WRKBUILD}/Release \
		-DCMAKE_RUNTIME_OUTPUT_DIRECTORY=${WRKBUILD}/Release

NO_TEST =	Yes

WRKDIST =	${WRKDIR}/portmidi

post-extract:
	cp -rf ${FILESDIR}/* ${WRKSRC}/

.include <bsd.port.mk>
