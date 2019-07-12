# $OpenBSD: Makefile,v 1.5 2019/07/12 20:49:53 sthen Exp $

COMMENT =		tarsnap wrapper which automatically expires backups

MODPY_EGG_VERSION =	0.4.0
DISTNAME =		tarsnapper-${MODPY_EGG_VERSION}
REVISION =		1

CATEGORIES =		sysutils

MAINTAINER =		Michael Reed <michael@michaelreed.io>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS =		devel/py-dateutil${MODPY_FLAVOR} \
			devel/py-pexpect${MODPY_FLAVOR} \
			textproc/py-yaml${MODPY_FLAVOR} \
			sysutils/tarsnap

TEST_DEPENDS =		devel/py-nose${MODPY_FLAVOR}

do-test:
	cd ${WRKSRC} && \
		${SETENV} ${MAKE_ENV} ${LOCALBASE}/bin/nosetests${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
