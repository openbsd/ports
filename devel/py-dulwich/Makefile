# $OpenBSD: Makefile,v 1.14 2014/10/12 20:57:06 juanfra Exp $

COMMENT =		pure Python implementation of Git file formats and protocols

MODPY_EGG_VERSION =	0.9.7
DISTNAME =		dulwich-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		http://samba.org/~jelmer/dulwich/

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@gmail.com>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += pthread ${MODPY_WANTLIB}

MASTER_SITES =		${MASTER_SITE_PYPI:=d/dulwich/}

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		devel/py-gevent \
			net/py-geventhttpclient

# One test fails due to the lack of OpenStack SWIFT.
# The other failed tests are related to this bug:
# https://github.com/surfly/gevent/issues/446
TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/py-nose \
			devel/git,-main

do-test:
	cd ${WRKSRC} && nosetests

.include <bsd.port.mk>
