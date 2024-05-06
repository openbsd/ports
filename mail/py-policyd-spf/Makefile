COMMENT=	external SPF policy checker for postfix

# superseded by https://launchpad.net/spf-engine
MODPY_EGG_VERSION= 2.0.2
DISTNAME=	pypolicyd-spf-${MODPY_EGG_VERSION}
PKGNAME=	py-policyd-spf-${MODPY_EGG_VERSION}
CATEGORIES=	mail
REVISION=	0

HOMEPAGE=	https://launchpad.net/pypolicyd-spf

# Apache 2.0
PERMIT_PACKAGE=	Yes

MODULES=        lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

FLAVORS=	python3
FLAVOR=		python3

RUN_DEPENDS=	mail/py-spf${MODPY_FLAVOR}

NO_TEST=	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/policyd-spf.1

.include <bsd.port.mk>
