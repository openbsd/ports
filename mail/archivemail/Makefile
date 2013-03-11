# $OpenBSD: Makefile,v 1.13 2013/03/11 11:23:50 espie Exp $

COMMENT=	archive and compress your old email

VERSION=	0.7.2
DISTNAME=	archivemail-${VERSION}
REVISION =	4
CATEGORIES=	mail

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=archivemail/}

MODULES=	lang/python

USE_GROFF =	Yes
NO_TEST=	Yes

SUBST_VARS=	VERSION
PKG_ARCH=	*

.include <bsd.port.mk>
