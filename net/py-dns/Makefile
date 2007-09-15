# $OpenBSD: Makefile,v 1.8 2007/09/15 22:36:58 merdely Exp $

COMMENT=	Python DNS library

VERSION=	2.3.0
DISTNAME=	pydns-${VERSION}
PKGNAME=	py-dns-${VERSION}p0
CATEGORIES=    	net

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pydns/}
EXTRACT_SUFX=	.tgz

HOMEPAGE=	http://pydns.sourceforge.net/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

# Python License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/python

NO_REGRESS=	Yes

.include <bsd.port.mk>
