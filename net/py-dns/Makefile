# $OpenBSD: Makefile,v 1.5 2004/07/26 21:04:24 xsa Exp $

COMMENT=	"Python DNS library"

VERSION=	2.3.0
DISTNAME=	pydns-${VERSION}
PKGNAME=	py-dns-${VERSION}
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

MODULES=	python

NO_REGRESS=	Yes

.include <bsd.port.mk>
