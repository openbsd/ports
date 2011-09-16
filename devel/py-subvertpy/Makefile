# $OpenBSD: Makefile,v 1.4 2011/09/16 09:24:56 espie Exp $

COMMENT=	alternative python bindings for subversion

MODPY_EGG_VERSION= 0.8.0
DISTNAME=	subvertpy-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
REVISION =	1
CATEGORIES=	devel

HOMEPAGE=	http://launchpad.net/subvertpy

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://launchpad.net/subvertpy/trunk/${MODPY_EGG_VERSION}/+download/

WANTLIB=	apr-1 svn_client-1 svn_delta-1 svn_fs-1 svn_ra-1 svn_repos-1 \
		svn_subr-1 svn_wc-1

MODULES=	lang/python

LIB_DEPENDS=	devel/subversion

.include <bsd.port.mk>
