COMMENT =	curses based internet radio player
CATEGORIES =	audio

MODPY_DISTV =	0.9.3.11.31
GH_ACCOUNT =	coderholic
GH_PROJECT =	pyradio
GH_TAGNAME =	${MODPY_DISTV}

# MIT
PERMIT_PACKAGE = Yes

MODULES =	lang/python
MODPY_PYBUILD =	setuptools

# from requirements_pipx.txt
RUN_DEPENDS =	devel/py-rich \
		www/py-requests \
		net/py-dnspython \
		sysutils/py-psutil \
		net/py-netifaces \
		devel/py-dateutil \
		textproc/py-charset-normalizer \
		textproc/py-rapidfuzz

RUN_DEPENDS +=	devel/xdg-utils \
		mpv-*|mplayer-*|vlc-*:multimedia/mpv \
		x11/dbus

NO_TEST =	Yes

.include <bsd.port.mk>
