# $OpenBSD: Makefile,v 1.21 2015/06/28 06:31:43 jasper Exp $

COMMENT=	Python-based build system

VERSION =	2.3.5
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

# XXX: upstream shipped empty files
post-install:
	rm ${PREFIX}/man/man1/*.1

.include <bsd.port.mk>
