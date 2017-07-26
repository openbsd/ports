# $OpenBSD: Makefile,v 1.27 2017/07/26 16:12:46 sthen Exp $

COMMENT=	Python-based build system

VERSION =	2.5.1
REVISION =	0
DISTNAME=	scons-${VERSION}
CATEGORIES=	devel

HOMEPAGE=	http://www.scons.org/
MAINTAINER=	Brian Callahan <bcallah@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=scons/}

MODULES=	lang/python

NO_TEST=	Yes

SUBST_VARS+=	VERSION

MODPY_ADJ_FILES +=	script/scons script/sconsign script/scons-time

.include <bsd.port.mk>
