# $OpenBSD: Makefile,v 1.1.1.1 2020/07/15 20:39:52 kn Exp $

COMMENT =		audio normalization

MODPY_EGG_VERSION =	1.20.0
DISTNAME =		ffmpeg-normalize-${MODPY_EGG_VERSION}

CATEGORIES =		audio

MAINTAINER =		Laurence Tratt <laurie@tratt.net>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS =		devel/py-colorama${MODPY_FLAVOR} \
			devel/py-tqdm${MODPY_FLAVOR} \
			graphics/ffmpeg

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} test/test.py

.include <bsd.port.mk>
