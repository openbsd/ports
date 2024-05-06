COMMENT=		VPN over an SSH tunnel

MODPY_EGG_VERSION=	1.1.2
DISTNAME=		sshuttle-${MODPY_EGG_VERSION}
REVISION=		0

FIX_EXTRACT_PERMISSIONS=Yes

CATEGORIES=		net security

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1+
PERMIT_PACKAGE=		Yes

MODULES=		lang/python

FLAVORS=		python3
FLAVOR=			python3

MODPY_PI=		Yes
MODPY_PYBUILD=		setuptools_scm

USE_GMAKE=		Yes

BUILD_DEPENDS=		devel/py-poetry-core${MODPY_FLAVOR} \
			textproc/py-sphinx${MODPY_FLAVOR}

TEST_DEPENDS=		devel/py-test-cov${MODPY_FLAVOR}

.include <bsd.port.mk>
