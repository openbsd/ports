# $OpenBSD: Makefile,v 1.5 2008/10/28 09:28:24 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	distributed version control system by Canonical

MODPY_EGG_VERSION=1.3
DISTNAME=	bzr-${MODPY_EGG_VERSION}
CATEGORIES=	devel

HOMEPAGE=	http://bazaar-vcs.org/

# GPL 
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}releases/src/

MODULES=	lang/python

RUN_DEPENDS+=	::lang/python/${MODPY_VERSION},-bz2 \
		::lang/python/${MODPY_VERSION},-expat \
		::net/py-curl \
		::security/py-paramiko \
		::textproc/gdiff

REGRESS_DEPENDS=${RUN_DEPENDS}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/bzr ${WRKSRC}/bzrlib/tests/test_diff.py

# need at least ulimit -n 512
do-regress:
	@cd ${WRKBUILD} && ${MODPY_BIN} ./bzr selftest
 
.include <bsd.port.mk>
