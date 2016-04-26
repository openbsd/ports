# $OpenBSD: Makefile,v 1.8 2016/04/26 15:10:58 jasper Exp $

COMMENT=	alternative python bindings for subversion

MODPY_EGG_VERSION= 0.8.8
DISTNAME=	subvertpy-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	devel
REVISION=	1

HOMEPAGE=	http://launchpad.net/subvertpy

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += apr-1 pthread svn_client-1 svn_delta-1 svn_fs-1 svn_ra-1
WANTLIB += svn_repos-1 svn_subr-1 svn_wc-1

MASTER_SITES=	http://launchpad.net/subvertpy/trunk/${MODPY_EGG_VERSION}/+download/


MODULES=	lang/python

LIB_DEPENDS=	devel/subversion>=1.7.0

.include <bsd.port.mk>
