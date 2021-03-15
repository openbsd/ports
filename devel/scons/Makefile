# $OpenBSD: Makefile,v 1.30 2021/03/15 20:53:23 sthen Exp $

COMMENT=	Python-based build system

VERSION=	4.1.0
DISTNAME=	scons-${VERSION}
WRKDIST=	${WRKDIR}/SCons-${VERSION}
CATEGORIES=	devel

HOMEPAGE=	http://www.scons.org/
MAINTAINER=	Brian Callahan <bcallah@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=scons/}

MODULES=	lang/python
MODPY_SETUPTOOLS= Yes

NO_TEST=	Yes

SUBST_VARS+=	VERSION

MODPY_ADJ_FILES +=	SCons/Utilities/*.py

.include <bsd.port.mk>
