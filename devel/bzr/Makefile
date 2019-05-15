# $OpenBSD: Makefile,v 1.25 2019/05/15 12:04:35 kmos Exp $

COMMENT =	distributed version control system by Canonical

MODPY_EGG_VERSION = 2.4.2
DISTNAME =	bzr-${MODPY_EGG_VERSION}
CATEGORIES =	devel
REVISION =	1

HOMEPAGE =	https://bazaar.canonical.com/

# GPL 
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${MODPY_WANTLIB} pthread

MASTER_SITES =	https://launchpad.net/bzr/${MODPY_EGG_VERSION:C/..$//}/${MODPY_EGG_VERSION}/+download/

MODULES =	lang/python

RUN_DEPENDS +=	net/py-curl \
		security/py-paramiko \
		textproc/gdiff
TEST_DEPENDS =	devel/py-testtools

pre-configure:
	${SUBST_CMD} ${WRKSRC}/bzr ${WRKSRC}/bzrlib/tests/test_diff.py

# need at least ulimit -n 512
do-test:
	@cd ${WRKBUILD} && ${MODPY_BIN} ./bzr selftest -v
 
.include <bsd.port.mk>
