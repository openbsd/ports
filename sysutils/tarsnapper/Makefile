# $OpenBSD: Makefile,v 1.1.1.1 2017/08/12 19:17:14 danj Exp $

COMMENT =		tarsnap wrapper which automatically expires backups

MODPY_EGG_VERSION =	0.4.0
DISTNAME =		tarsnapper-${MODPY_EGG_VERSION}

CATEGORIES =		sysutils

MAINTAINER =		Michael Reed <m.reed@excitingdomainname.com>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS =		devel/py-dateutil${MODPY_FLAVOR} \
			devel/py-pexpect${MODPY_FLAVOR} \
			textproc/py-yaml${MODPY_FLAVOR} \
			sysutils/tarsnap

TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/py-nose${MODPY_FLAVOR}

do-test:
	cd ${WRKSRC} && \
		${SETENV} ${MAKE_ENV} ${LOCALBASE}/bin/nosetests${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
