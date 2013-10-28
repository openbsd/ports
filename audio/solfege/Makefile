# $OpenBSD: Makefile,v 1.3 2013/10/28 15:36:03 bcallah Exp $

COMMENT =	solfege and ear training program
DISTNAME =	solfege-3.22.2
CATEGORIES =	audio x11

HOMEPAGE =	http://www.solfege.org/

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=solfege/}

MODULES =	devel/gettext \
		lang/python

BUILD_DEPENDS =	print/lilypond,-main \
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
	perl -pi -e "s,cp,${LOCALBASE}/bin/gcp,g" ${WRKSRC}/Makefile.in

pre-configure:
	cd ${WRKSRC} && ${SUBST_CMD} default.config run-solfege.py.in system.rc && \
		perl -pi -e "s,/bin/bash,/bin/sh,g" \
		${WRKSRC}/exercises/standard/lesson-files/bin/csound-play-harmonic-interval.sh

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} ./test.py

.include <bsd.port.mk>
