# $OpenBSD: Makefile,v 1.24 2016/07/10 22:28:20 czarkoff Exp $

COMMENT =		pure Python implementation of Git file formats and protocols

MODPY_EGG_VERSION =	0.14.0
DISTNAME =		dulwich-${MODPY_EGG_VERSION}
PKGNAME =		${MODPY_PY_PREFIX}${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://www.dulwich.io/

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += pthread ${MODPY_WANTLIB}

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		net/py-geventhttpclient

# One test fails due to the lack of OpenStack SWIFT.
TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/py-nose \
			devel/git,-main

do-test:
	nosetests -w ${WRKSRC}

post-install:
	rm -R ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/docs
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dulwich/tutorial
	${INSTALL_DATA} ${WRKSRC}/docs/tutorial/*.txt \
			${PREFIX}/share/doc/dulwich/tutorial

.include <bsd.port.mk>
