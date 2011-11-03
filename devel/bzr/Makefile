# $OpenBSD: Makefile,v 1.19 2011/11/03 22:13:23 jasper Exp $

COMMENT =	distributed version control system by Canonical

MODPY_EGG_VERSION = 2.2.2
DISTNAME =	bzr-${MODPY_EGG_VERSION}
REVISION =	3
CATEGORIES =	devel

HOMEPAGE =	http://bazaar-vcs.org/

# GPL 
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	http://launchpad.net/bzr/${MODPY_EGG_VERSION:C/..$//}/${MODPY_EGG_VERSION}/+download/

WANTLIB=	${MODPY_WANTLIB}

MODULES =	lang/python
USE_GROFF =	Yes

RUN_DEPENDS +=	net/py-curl \
		security/py-paramiko \
		textproc/gdiff
REGRESS_DEPENDS = ${RUN_DEPENDS} \
		devel/py-testtools

pre-configure:
	${SUBST_CMD} ${WRKSRC}/bzr ${WRKSRC}/bzrlib/tests/test_diff.py

# need at least ulimit -n 512
do-regress:
	@cd ${WRKBUILD} && ${MODPY_BIN} ./bzr selftest -v
 
.include <bsd.port.mk>
