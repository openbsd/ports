# $OpenBSD: Makefile,v 1.2 2006/06/03 09:39:22 alek Exp $

COMMENT=	"archive and compress your old email"

DISTNAME=	archivemail-0.6.1
PKGNAME=	${DISTNAME}p0
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

PKG_ARCH=	*

.include <bsd.port.mk>
