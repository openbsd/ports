# $OpenBSD: Makefile,v 1.8 2003/10/21 18:40:38 sturm Exp $

COMMENT=	"checks HTML documents for broken links"

DISTNAME=	linkchecker-1.6.4
CATEGORIES=    	www

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=linkchecker/}

HOMEPAGE=	http://linkchecker.sourceforge.net/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	python

MODPY_DISTUTILS_INSTALLARGS=	--no-compile

BUILD_DEPENDS+=	:py-dns-*:net/py-dns

NO_REGRESS=	Yes

.include <bsd.port.mk>
