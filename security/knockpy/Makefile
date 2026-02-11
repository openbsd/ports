COMMENT =	subdomain scanner

MODPY_DISTV =	8.0.0
DISTNAME =	knockpy-${MODPY_DISTV}

GH_ACCOUNT =	guelfoweb
GH_PROJECT =	knock
GH_TAGNAME =	${MODPY_DISTV}

CATEGORIES =	security

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv3+
PERMIT_PACKAGE=	Yes

MODULES =	lang/python

MODPY_PYBUILD =	setuptools

RUN_DEPENDS =	devel/py-tqdm \
		net/py-dnspython \
		security/py-openssl \
		sysutils/py-dotenv \
		www/py-beautifulsoup4 \
		www/py-httpx \
		www/py-requests

.include <bsd.port.mk>
