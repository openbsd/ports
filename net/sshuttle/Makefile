COMMENT=		VPN over an SSH tunnel

MODPY_DISTV=		1.2.0
DISTNAME=		sshuttle-${MODPY_DISTV}

FIX_EXTRACT_PERMISSIONS=Yes

CATEGORIES=		net security

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1+
PERMIT_PACKAGE=		Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_PYBUILD=		poetry-core

USE_GMAKE=		Yes

BUILD_DEPENDS=		textproc/py-sphinx

TEST_DEPENDS=		devel/py-test-cov

.include <bsd.port.mk>
