COMMENT=		build manual page from python's ArgumentParser object

MODPY_EGG_VERSION=	4.5
DISTNAME=		argparse-manpage-${MODPY_EGG_VERSION}

CATEGORIES=		textproc

# Apache-2.0
PERMIT_PACKAGE=		Yes

SITES=			https://github.com/praiskup/argparse-manpage/releases/download/v${MODPY_EGG_VERSION}/

MODULES=		lang/python

MODPY_PYBUILD=		setuptools

TEST_DEPENDS=		devel/py-pip${MODPY_FLAVOR}

.include <bsd.port.mk>
