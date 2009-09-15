# $OpenBSD: Makefile.inc,v 1.3 2009/09/15 17:37:22 jasper Exp $

COMMENT=	content management system built on top of Zope

CATEGORIES=	www

HOMEPAGE=	http://www.plone.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES?=		${MASTER_SITE_SOURCEFORGE:=plone/}

MODULES=		www/zope
MODZOPE_VERSION?=	2.9
PY_FLAVOR=		python${MODZOPE_PYTHON_VERSION}

RUN_DEPENDS+=	:py-Imaging-*-${PY_FLAVOR}:graphics/py-Imaging,${PY_FLAVOR}
