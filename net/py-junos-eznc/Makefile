# $OpenBSD: Makefile,v 1.7 2019/07/12 20:48:45 sthen Exp $

COMMENT =		library for Junos automation

MODPY_EGG_VERSION =	2.2.1
DISTNAME =		junos-eznc-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		net

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Apache2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
FLAVORS =		python3
FLAVOR ?=

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		devel/py-serial${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR} \
			net/py-netaddr${MODPY_FLAVOR} \
			net/py-ncclient${MODPY_FLAVOR} \
			security/py-paramiko${MODPY_FLAVOR} \
			security/py-scp${MODPY_FLAVOR} \
			www/py-jinja2${MODPY_FLAVOR}


.include <bsd.port.mk>
