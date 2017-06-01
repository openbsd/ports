# $OpenBSD: Makefile,v 1.25 2017/06/01 19:58:04 schwarze Exp $

COMMENT=	Python-based build system

VERSION =	2.4.1
DISTNAME=	scons-${VERSION}
REVISION =	0
CATEGORIES=	devel

HOMEPAGE=	http://www.scons.org/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=scons/}

MODULES=	lang/python

NO_TEST=	Yes

SUBST_VARS+=	VERSION

MODPY_ADJ_FILES +=	script/scons script/sconsign script/scons-time

.include <bsd.port.mk>
