# $OpenBSD: Makefile,v 1.22 2013/10/18 21:24:09 schwarze Exp $

COMMENT =	distributed version control system by Canonical

MODPY_EGG_VERSION = 2.4.2
DISTNAME =	bzr-${MODPY_EGG_VERSION}
CATEGORIES =	devel

HOMEPAGE =	http://bazaar-vcs.org/

# GPL 
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://launchpad.net/bzr/${MODPY_EGG_VERSION:C/..$//}/${MODPY_EGG_VERSION}/+download/

WANTLIB=	${MODPY_WANTLIB}

MODULES =	lang/python

RUN_DEPENDS +=	net/py-curl \
		security/py-paramiko \
		textproc/gdiff
TEST_DEPENDS = ${RUN_DEPENDS} \
		devel/py-testtools

pre-configure:
	${SUBST_CMD} ${WRKSRC}/bzr ${WRKSRC}/bzrlib/tests/test_diff.py

# need at least ulimit -n 512
do-test:
	@cd ${WRKBUILD} && ${MODPY_BIN} ./bzr selftest -v
 
.include <bsd.port.mk>
