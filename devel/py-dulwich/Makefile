# $OpenBSD: Makefile,v 1.26 2016/10/14 14:00:09 czarkoff Exp $

COMMENT =		pure Python implementation of Git file formats and protocols

MODPY_EGG_VERSION =	0.15.0
DISTNAME =		dulwich-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

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

TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/git,-main \
			devel/py-fastimport \
			devel/py-mock

MAKE_ENV +=		LC_CTYPE=en_US.UTF-8
GIT =			${LOCALBASE}/bin/git

pre-test:
	sed -i '/^_DEFAULT_GIT/s/git/${GIT:S/\//\\\//g}/' \
		${WRKSRC}/dulwich/tests/compat/utils.py

post-install:
	rm -R ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/docs
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dulwich/tutorial
	${INSTALL_DATA} ${WRKSRC}/docs/tutorial/*.txt \
			${PREFIX}/share/doc/dulwich/tutorial

.include <bsd.port.mk>
