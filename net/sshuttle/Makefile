COMMENT=		VPN over an SSH tunnel

MODPY_DISTV=	1.1.2
DISTNAME=		sshuttle-${MODPY_DISTV}
REVISION=		1

FIX_EXTRACT_PERMISSIONS=Yes

CATEGORIES=		net security

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1+
PERMIT_PACKAGE=		Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_PYBUILD=		setuptools_scm

USE_GMAKE=		Yes

BUILD_DEPENDS=		devel/py-poetry-core \
			textproc/py-sphinx

TEST_DEPENDS=		devel/py-test-cov

.include <bsd.port.mk>
