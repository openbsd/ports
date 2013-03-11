# $OpenBSD: Makefile,v 1.6 2013/03/11 10:50:26 espie Exp $

COMMENT=	alternative python bindings for subversion

MODPY_EGG_VERSION= 0.8.8
DISTNAME=	subvertpy-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	devel

HOMEPAGE=	http://launchpad.net/subvertpy

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://launchpad.net/subvertpy/trunk/${MODPY_EGG_VERSION}/+download/

WANTLIB += apr-1 svn_client-1 svn_delta-1 svn_fs-1 svn_ra-1 svn_repos-1
WANTLIB += svn_subr-1 svn_wc-1 ${MODPY_WANTLIB}

MODULES=	lang/python

LIB_DEPENDS=	devel/subversion>=1.7.0

.include <bsd.port.mk>
