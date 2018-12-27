# $OpenBSD: Makefile,v 1.29 2018/12/27 21:36:55 danj Exp $

COMMENT=		Python-powered template engine and code generator

MODPY_EGG_VERSION=	3.1.0
DISTNAME=		Cheetah3-${MODPY_EGG_VERSION}
PKGNAME=		py-cheetah-${MODPY_EGG_VERSION}
CATEGORIES=		devel textproc

HOMEPAGE=		http://www.cheetahtemplate.org/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += pthread

MODULES=		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS=	Yes

RUN_DEPENDS=		textproc/py-markdown${MODPY_FLAVOR}
TEST_DEPENDS=		${FULLPKGNAME}:${BUILD_PKGPATH} \
			textproc/py-pygments${MODPY_FLAVOR}

MAKE_ENV+=		CHEETAH_USE_SETUPTOOLS=1

FLAVORS=		python3
FLAVOR?=

post-install:
	for i in ${PREFIX}/bin/*; do \
		mv $${i} $${i}${MODPY_BIN_SUFFIX} ;\
	done

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} Cheetah/Tests/Test.py

.include <bsd.port.mk>
