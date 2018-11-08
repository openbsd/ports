# $OpenBSD: Makefile,v 1.181 2018/11/08 21:39:59 giovanni Exp $

COMMENT =	CLI program to download videos from YouTube and other sites

VERSION =	2018.11.07
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
