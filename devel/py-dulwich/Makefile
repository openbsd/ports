# $OpenBSD: Makefile,v 1.19 2015/09/23 07:17:00 czarkoff Exp $

COMMENT =		pure Python implementation of Git file formats and protocols

MODPY_EGG_VERSION =	0.11.1
DISTNAME =		dulwich-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://www.dulwich.io/

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += pthread ${MODPY_WANTLIB}

MASTER_SITES =		${HOMEPAGE:=releases/}
MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_2}

RUN_DEPENDS =		devel/py-gevent \
			net/py-geventhttpclient

# One test fails due to the lack of OpenStack SWIFT.
# The other failed tests are related to this bug:
# https://github.com/surfly/gevent/issues/446
TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/py-mock \
			devel/py-nose \
			devel/git,-main


do-test:
	cd ${WRKSRC} && nosetests

post-install:
	rm -R ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/docs
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dulwich/tutorial
	${INSTALL_DATA} ${WRKSRC}/docs/tutorial/*.txt \
			${PREFIX}/share/doc/dulwich/tutorial

.include <bsd.port.mk>
