COMMENT =	subdomain scanner

MODPY_EGG_VERSION =	7.0.0

DISTNAME =	knockpy-${MODPY_EGG_VERSION}
REVISION =	0

GH_ACCOUNT =	guelfoweb
GH_PROJECT =	knock
GH_TAGNAME =	${MODPY_EGG_VERSION}

CATEGORIES =	security

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv3+
PERMIT_PACKAGE=	Yes

MODULES =	lang/python

MODPY_PYBUILD =	setuptools

RUN_DEPENDS =	devel/py-tqdm${MODPY_FLAVOR} \
		net/py-dnspython${MODPY_FLAVOR} \
		security/py-openssl${MODPY_FLAVOR} \
		www/py-beautifulsoup4${MODPY_FLAVOR} \
		www/py-requests${MODPY_FLAVOR}

.include <bsd.port.mk>
