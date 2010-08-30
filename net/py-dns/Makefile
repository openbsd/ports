# $OpenBSD: Makefile,v 1.14 2010/08/30 21:21:53 sthen Exp $

COMMENT=	Python DNS library

VERSION=	2.3.3
DISTNAME=	pydns-${VERSION}
PKGNAME=	py-dns-${VERSION}
REVISION=	1
CATEGORIES=    	net

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pydns/}

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
