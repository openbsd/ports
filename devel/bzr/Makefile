# $OpenBSD: Makefile,v 1.7 2009/03/14 23:13:34 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	distributed version control system by Canonical

MODPY_EGG_VERSION=1.3
DISTNAME=	bzr-${MODPY_EGG_VERSION}
PKGNAME=	${DISTNAME}p1
CATEGORIES=	devel

HOMEPAGE=	http://bazaar-vcs.org/

# GPL 
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}releases/src/

MODULES=	lang/python

RUN_DEPENDS+=	::net/py-curl \
		::security/py-paramiko \
		::textproc/gdiff

REGRESS_DEPENDS=${RUN_DEPENDS}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/bzr ${WRKSRC}/bzrlib/tests/test_diff.py

# need at least ulimit -n 512
do-regress:
	@cd ${WRKBUILD} && ${MODPY_BIN} ./bzr selftest
 
.include <bsd.port.mk>
