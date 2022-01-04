# $OpenBSD: Makefile,v 1.49 2022/01/04 10:12:15 sthen Exp $

COMMENT=		elegant and simple HTTP library for Python

MODPY_EGG_VERSION=	2.27.0
# 2.27.x is likely to be the last version supporting Python 2.
DISTNAME=		requests-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		www

HOMEPAGE=		http://python-requests.org/

# APLv2
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

FLAVORS=		python3
FLAVOR?=

MODPY_PI=		Yes
MODPY_PYTEST=		Yes
MODPY_SETUPTOOLS=	Yes
TEST_ENV=		PY_IGNORE_IMPORTMISMATCH=1

# upstream prefers charset_normalizer instead of chardet for py3 (but still
# chardet on py2). maybe switch over if that's added to ports. can also use
# idna 3.x on py3.
RUN_DEPENDS=		devel/py-certifi${MODPY_FLAVOR} \
			net/py-idna${MODPY_FLAVOR} \
			textproc/py-chardet${MODPY_FLAVOR} \
			www/py-urllib3${MODPY_FLAVOR}

.if ${FLAVOR:Mpython3}
RUN_DEPENDS+=		archivers/py-brotli${MODPY_FLAVOR}

TEST_DEPENDS=		devel/py-test-cov${MODPY_FLAVOR} \
			devel/py-test-mock${MODPY_FLAVOR} \
			devel/py-test-httpbin${MODPY_FLAVOR} \
			devel/py-test-xdist${MODPY_FLAVOR} \
			net/py-socks${MODPY_FLAVOR} \
			security/py-trustme${MODPY_FLAVOR} \
			www/py-urllib3${MODPY_FLAVOR}
.else
NO_TEST =		Yes
.endif

.include <bsd.port.mk>
