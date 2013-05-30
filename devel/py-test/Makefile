# $OpenBSD: Makefile,v 1.5 2013/05/30 13:09:21 ajacoutot Exp $

COMMENT=		cross-project testing tool for Python

MODPY_EGG_VERSION=	2.2.3
DISTNAME=		pytest-${MODPY_EGG_VERSION}
PKGNAME=		py-test-${MODPY_EGG_VERSION}
REVISION =		1

EXTRACT_SUFX=		.zip

CATEGORIES=		devel

HOMEPAGE=		http://pytest.org/latest/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_PYPI:=p/pytest/}

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

WANTLIB+=		${MODPY_WANTLIB}

FLAVORS=		python3
FLAVOR?=

RUN_DEPENDS=		devel/py-py${MODPY_FLAVOR}
TEST_DEPENDS=	devel/py-test${MODPY_FLAVOR}

do-test:
	cd ${WRKSRC} && ${LOCALBASE}/bin/py.test${MODPY_BIN_SUFFIX} testing

.if ${FLAVOR:Mpython3}
post-install:
	mv ${PREFIX}/bin/py.test ${PREFIX}/bin/py.test${MODPY_BIN_SUFFIX}
.endif

.include <bsd.port.mk>
