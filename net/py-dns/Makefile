# $OpenBSD: Makefile,v 1.3 2003/07/31 19:11:59 sturm Exp $

COMMENT=	"python DNS library"

VERSION=	2.3.0
DISTNAME=	pydns-${VERSION}
PKGNAME=	py-dns-${VERSION}
CATEGORIES=    	net

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pydns/}
EXTRACT_SUFX=	.tgz

HOMEPAGE=	http://linkchecker.sourceforge.net/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

# Python License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	python

NO_REGRESS=	Yes

.include <bsd.port.mk>
