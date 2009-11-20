# $OpenBSD: Makefile,v 1.9 2009/11/20 21:15:25 fgsch Exp $

SHARED_ONLY =	Yes

COMMENT =	distributed version control system by Canonical

MODPY_EGG_VERSION = 2.0.1
DISTNAME =	bzr-${MODPY_EGG_VERSION}
CATEGORIES =	devel

HOMEPAGE =	http://bazaar-vcs.org/

# GPL 
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	http://launchpad.net/bzr/${MODPY_EGG_VERSION:C/..$//}/${MODPY_EGG_VERSION}/+download/

MODULES =	lang/python

RUN_DEPENDS +=	::net/py-curl \
		::security/py-paramiko \
		::textproc/gdiff
REGRESS_DEPENDS = ${RUN_DEPENDS}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/bzr ${WRKSRC}/bzrlib/tests/test_diff.py

# need at least ulimit -n 512
do-regress:
	@cd ${WRKBUILD} && ${MODPY_BIN} ./bzr selftest -v
 
.include <bsd.port.mk>
