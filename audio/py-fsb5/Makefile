# $OpenBSD: Makefile,v 1.3 2021/11/02 00:00:13 sthen Exp $

COMMENT =		extract audio from FSB5 (FMOD Sample Bank) files

MODPY_EGG_VERSION =	1.0
DISTNAME =		fsb5-${MODPY_EGG_VERSION}pl0
PKGNAME =		py-${DISTNAME}
GH_ACCOUNT =		HearthSim
GH_PROJECT =		python-fsb5
GH_TAGNAME =		b7bf605
CATEGORIES =		audio
REVISION =		0

MAINTAINER =		Thomas Frohwein <thfr@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

# requires audio/libogg and audio/libvorbis to decode ogg samples
MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR =		python3

# No tests upstream
NO_TEST =		Yes

# install extract.py as fsb5-extract.py to avoid possible name collisions
post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/extract.py \
		${PREFIX}/bin/fsb5-extract

.include <bsd.port.mk>
