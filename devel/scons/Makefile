# $OpenBSD: Makefile,v 1.24 2015/12/01 08:26:16 jasper Exp $

COMMENT=	Python-based build system

VERSION =	2.4.1
DISTNAME=	scons-${VERSION}
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
