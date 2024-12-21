MODPY_DISTV =	0.2
COMMENT =	curses interface for browsing and playing radio streams
DISTNAME =	curseradio-${MODPY_DISTV}
CATEGORIES =	audio
REVISION =	6

GH_ACCOUNT =	chronitis
GH_PROJECT =	curseradio
GH_COMMIT =	1bd4bd0faeec675e0647bac9a100b526cba19f8d

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
