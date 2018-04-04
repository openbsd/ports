# $OpenBSD: Makefile,v 1.27 2018/04/04 18:59:59 danj Exp $

COMMENT=		elegant and simple HTTP library for Python

MODPY_EGG_VERSION=	2.18.4
DISTNAME=		requests-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		0

# XXX remove during next update
DISTFILES =		${DISTNAME}_1{${DISTNAME}}${EXTRACT_SUFX}

CATEGORIES=		www

HOMEPAGE=		http://python-requests.org/

MAINTAINER=		Alexandr Shadchin <shadchin@openbsd.org>

# APLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

RUN_DEPENDS=		devel/py-certifi${MODPY_FLAVOR} \
			net/py-idna${MODPY_FLAVOR} \
			textproc/py-chardet${MODPY_FLAVOR} \
			www/py-urllib3${MODPY_FLAVOR}
TEST_DEPENDS=		${RUN_DEPENDS} \
			devel/py-test${MODPY_FLAVOR} \
			devel/py-test-cov${MODPY_FLAVOR} \
			devel/py-test-mock${MODPY_FLAVOR} \
			devel/py-test-httpbin${MODPY_FLAVOR} \
			devel/py-test-xdist${MODPY_FLAVOR} \
			net/py-socks${MODPY_FLAVOR}

FLAVORS=		python3
FLAVOR?=

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

WRKDIST=		${WRKDIR}/requests-${MODPY_EGG_VERSION}

post-install:
	ln -fs /etc/ssl/cert.pem \
	  ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/requests/cacert.pem

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m pytest

.include <bsd.port.mk>
