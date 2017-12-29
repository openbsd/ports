# $OpenBSD: Makefile,v 1.174 2017/12/29 10:53:48 nigel Exp $

COMMENT =	CLI program to download videos from YouTube and other sites

VERSION =	2017.12.23
MODPY_EGG_VERSION =	${VERSION:S/.0/./g}

DISTNAME =	youtube-dl-${VERSION}
CATEGORIES =	www

HOMEPAGE =	https://rg3.github.io/youtube-dl/

MAINTAINER =	Paul Irofti <pirofti@openbsd.org>

# Public Domain
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES =	https://yt-dl.org/downloads/${VERSION}/

MODULES =	lang/python

MODPY_SETUPTOOLS =	Yes
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}

TEST_DEPENDS +=	devel/flake8 \
		devel/py-nose${MODPY_FLAVOR}

TEST_ENV =	PATH=${PORTPATH}

pre-test:
	ln -sf ${LOCALBASE}/bin/nosetests-3 ${WRKDIR}/bin/nosetests

do-test:
	${TEST_ENV} ${MAKE_PROGRAM} -C ${WRKSRC} ${TEST_TARGET}

PKG_ARCH =	*

WRKDIST =	${WRKDIR}/youtube-dl

.include <bsd.port.mk>
