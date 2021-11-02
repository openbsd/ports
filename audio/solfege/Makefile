# $OpenBSD: Makefile,v 1.13 2021/11/02 00:00:14 sthen Exp $

BROKEN-hppa =	SIGILL when running lilypond

COMMENT =	solfege and ear training program

DISTNAME =	solfege-3.23.4
REVISION =	0

CATEGORIES =	audio x11

HOMEPAGE =	https://www.solfege.org/

# GPLv3+
PERMIT_PACKAGE =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=solfege/}

MODULES =	lang/python

BUILD_DEPENDS =	devel/gettext,-tools \
		devel/py-gobject3 \
		print/lilypond,-main \
		sysutils/coreutils \
		textproc/txt2man

RUN_DEPENDS =	audio/lame \
		audio/mpg123 \
		timidity-*|fluidsynth-*:audio/timidity \
		audio/vorbis-tools \
		devel/desktop-file-utils \
		devel/py-gobject3 \
		x11/gtk+3

CONFIGURE_STYLE =	gnu

USE_GMAKE =	Yes
ALL_TARGET =

FAKE_FLAGS =	sysconfdir=${LOCALBASE}/share/examples/solfege

post-patch:
	sed -i "s,cp,${LOCALBASE}/bin/gcp,g" ${WRKSRC}/Makefile.in

pre-configure:
	cd ${WRKSRC} && ${SUBST_CMD} default.config run-solfege.py.in system.rc && \
		sed -i "s,/bin/bash,/bin/sh,g" \
		${WRKSRC}/exercises/standard/lesson-files/bin/csound-play-harmonic-interval.sh

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} ./test.py

.include <bsd.port.mk>
