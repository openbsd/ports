MODPY_DISTV =	0.3
COMMENT =	curses interface for browsing and playing radio streams
DISTNAME =	curseradio-${MODPY_DISTV}pre20241222
CATEGORIES =	audio

GH_ACCOUNT =	elewarr
GH_PROJECT =	curseradio
GH_COMMIT =	95d6d33202a06da7b1db5d7a599e6cd6e4ec073b

MAINTAINER =	Krystian Lewandowski <k.lewandowski@me.com>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

MODPY_PYBUILD =	setuptools

RUN_DEPENDS =	textproc/py-lxml \
		www/py-requests \
		devel/py-xdg \
		multimedia/mpv

NO_TEST =	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/curseradio/curseradio.py

.include <bsd.port.mk>
