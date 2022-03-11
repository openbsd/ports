COMMENT =		interactive test suite for agar

PKGNAME =		agartest-$V

WANTLIB += GL SDL X11 Xinerama ag_au ag_core ag_gui ag_math c
WANTLIB += fontconfig freetype jpeg m png pthread portaudio sndfile z

LIB_DEPENDS =		x11/agar/agar \
			audio/libsndfile \
			audio/portaudio-svn \
			devel/sdl \
			graphics/jpeg \
			graphics/png

WRKSRC =		${WRKDIST}/tests

.include <bsd.port.mk>
