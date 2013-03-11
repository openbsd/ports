# $OpenBSD: Makefile,v 1.25 2013/03/11 11:41:28 espie Exp $

COMMENT=	Python module for GnuPG interface

VERSION=	0.3.2
DISTNAME=	GnuPGInterface-${VERSION}
PKGNAME=	py-gnupg-${VERSION}

REVISION=	6

CATEGORIES=    	security devel

HOMEPAGE=	http://py-gnupg.sourceforge.net/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=py-gnupg/}

MODULES=	lang/python

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	security/gnupg

NO_TEST=	Yes

.include <bsd.port.mk>
