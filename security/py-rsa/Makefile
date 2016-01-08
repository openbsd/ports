# $OpenBSD: Makefile,v 1.3 2016/01/08 09:23:00 ajacoutot Exp $

COMMENT=		Python RSA implementation

MODPY_EGG_VERSION=	3.2.3
DISTNAME=		rsa-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		0

CATEGORIES=		security


# Apache 2.0
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

RUN_DEPENDS=		devel/py-asn1${MODPY_FLAVOR}

FLAVORS=		python3
FLAVOR ?=

.if ${FLAVOR:Mpython3}
# needs devel/py-unittest2,python3
#NO_TEST=		Yes
.else
TEST_DEPENDS=		${RUN_DEPENDS} \
			devel/py-unittest2
.endif

.if ${FLAVOR:Mpython3}
post-install:
	for i in ${PREFIX}/bin/*; do \
		mv $${i} $${i}${MODPY_BIN_SUFFIX} ;\
	done
.endif

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} ./run_tests.py

.include <bsd.port.mk>
