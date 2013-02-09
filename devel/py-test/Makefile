# $OpenBSD: Makefile,v 1.3 2013/02/09 14:49:50 sthen Exp $

COMMENT=		cross-project testing tool for Python

MODPY_EGG_VERSION=	2.2.3
DISTNAME=		pytest-${MODPY_EGG_VERSION}
PKGNAME=		py-test-${MODPY_EGG_VERSION}
REVISION =		0

EXTRACT_SUFX=		.zip

CATEGORIES=		devel

HOMEPAGE=		http://pytest.org/latest/

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_PYPI:=p/pytest/}

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

WANTLIB+=		${MODPY_WANTLIB}

FLAVORS=		python3
FLAVOR?=

RUN_DEPENDS=		devel/py-py${MODPY_FLAVOR}
REGRESS_DEPENDS=	devel/py-test${MODPY_FLAVOR}

do-regress:
	cd ${WRKSRC} && ${LOCALBASE}/bin/py.test${MODPY_BIN_SUFFIX} testing

.if ${FLAVOR:Mpython3}
post-install:
	mv ${PREFIX}/bin/py.test ${PREFIX}/bin/py.test${MODPY_BIN_SUFFIX}
.endif

.include <bsd.port.mk>
