# $OpenBSD: Makefile,v 1.6 2019/05/10 15:20:57 jasper Exp $

COMMENT =		Python library for NETCONF clients

MODPY_EGG_VERSION =	0.6.4
DISTNAME =		ncclient-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		net

HOMEPAGE =		https://ncclient.readthedocs.io/en/latest/

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Apache2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
FLAVORS =		python3
FLAVOR ?=

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		security/py-paramiko${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR} \
			textproc/py-lxml${MODPY_FLAVOR}

.if !${FLAVOR:Mpython3}
RUN_DEPENDS +=		devel/py-selectors2
.endif

.include <bsd.port.mk>
