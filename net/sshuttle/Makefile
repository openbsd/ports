COMMENT=		VPN over an SSH tunnel

MODPY_EGG_VERSION=	1.1.1
DISTNAME=		sshuttle-${MODPY_EGG_VERSION}
REVISION=		3

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

BUILD_DEPENDS=		textproc/py-sphinx${MODPY_FLAVOR}
TEST_DEPENDS=		devel/py-test-cov${MODPY_FLAVOR}

post-build:
	cd ${WRKBUILD}/docs && ${SETENV} ${MAKE_ENV} \
		${MAKE_PROGRAM} ${MAKE_FLAGS} -f ${MAKE_FILE} man

post-install:
	${INSTALL_MAN} ${WRKBUILD}/docs/_build/man/sshuttle.1 \
		${PREFIX}/man/man1/

.include <bsd.port.mk>
