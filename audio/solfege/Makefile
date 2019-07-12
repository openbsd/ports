# $OpenBSD: Makefile,v 1.10 2019/07/12 20:43:41 sthen Exp $

COMMENT =	solfege and ear training program
DISTNAME =	solfege-3.22.2
CATEGORIES =	audio x11
BROKEN-hppa =	SIGILL when running lilypond
REVISION =	2

HOMEPAGE =	http://www.solfege.org/

# GPLv3+
PERMIT_PACKAGE =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=solfege/}

MODULES =	lang/python

BUILD_DEPENDS =	devel/gettext,-tools \
		print/lilypond,-main \
		sysutils/coreutils \
		x11/py-gtk2

RUN_DEPENDS =	audio/lame \
		audio/mpg123 \
		timidity-*|fluidsynth-*:audio/timidity \
		audio/vorbis-tools \
		devel/desktop-file-utils \
		x11/py-gtk2

CONFIGURE_STYLE =	gnu

USE_GMAKE =	Yes

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
