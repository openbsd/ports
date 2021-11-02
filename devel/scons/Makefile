# $OpenBSD: Makefile,v 1.34 2021/11/02 00:06:13 sthen Exp $

COMMENT=	Python-based build system

VERSION=	4.2.0
DISTNAME=	scons-${VERSION}
REVISION=	0
CATEGORIES=	devel

HOMEPAGE=	https://www.scons.org/

# MIT
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=scons/}

MODULES=	lang/python

MODPY_SETUPTOOLS =      Yes

WRKDIST=	${WRKDIR}/SCons-${VERSION}

NO_TEST=	Yes

SUBST_VARS+=	VERSION

.include <bsd.port.mk>
