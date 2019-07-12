# $OpenBSD: Makefile,v 1.3 2019/07/12 20:43:32 sthen Exp $

MODPY_EGG_VERSION =	0.2
COMMENT =	curses interface for browsing and playing radio streams
DISTNAME =	curseradio-${MODPY_EGG_VERSION}
CATEGORIES =	audio
REVISION =	0

GH_ACCOUNT =	chronitis
GH_PROJECT =	curseradio
GH_COMMIT =	1bd4bd0faeec675e0647bac9a100b526cba19f8d

MAINTAINER =	Krystian Lewandowski <k.lewandowski@me.com>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS =	textproc/py-lxml${MODPY_FLAVOR} \
		www/py-requests${MODPY_FLAVOR} \
		devel/py-xdg${MODPY_FLAVOR} \
		multimedia/mpv

NO_TEST =	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/curseradio/curseradio.py

.include <bsd.port.mk>
