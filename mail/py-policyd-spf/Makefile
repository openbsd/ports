COMMENT=	external SPF policy checker for postfix

# superseded by https://launchpad.net/spf-engine
MODPY_DISTV=	2.0.2
DISTNAME=	pypolicyd-spf-${MODPY_DISTV}
PKGNAME=	py-policyd-spf-${MODPY_DISTV}
CATEGORIES=	mail
REVISION=	1

HOMEPAGE=	https://launchpad.net/pypolicyd-spf

# Apache 2.0
PERMIT_PACKAGE=	Yes

MODULES=        lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	mail/py-spf

NO_TEST=	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/policyd-spf.1

.include <bsd.port.mk>
