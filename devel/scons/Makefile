# $OpenBSD: Makefile,v 1.22 2015/07/10 07:06:07 jasper Exp $

COMMENT=	Python-based build system

VERSION =	2.3.5
DISTNAME=	scons-${VERSION}
REVISION =	0
CATEGORIES=	devel

HOMEPAGE=	http://www.scons.org/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=scons/}

MODULES=	lang/python

USE_GROFF =	Yes
NO_TEST=	Yes

SUBST_VARS+=	VERSION

MODPY_ADJ_FILES +=	script/scons script/sconsign script/scons-time

.include <bsd.port.mk>
