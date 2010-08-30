# $OpenBSD: Makefile,v 1.8 2010/08/30 17:46:57 fgsch Exp $

COMMENT=	archive and compress your old email

VERSION=	0.7.2
DISTNAME=	archivemail-${VERSION}
REVISION =	1
CATEGORIES=	mail

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=archivemail/}

MODULES=	lang/python

NO_REGRESS=	Yes

SUBST_VARS=	VERSION
PKG_ARCH=	*

.include <bsd.port.mk>
