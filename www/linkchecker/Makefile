# $OpenBSD: Makefile,v 1.18 2005/01/12 23:56:27 xsa Exp $

SHARED_ONLY=	Yes

COMMENT=	"checks HTML documents for broken links"

DISTNAME=	linkchecker-2.1
CATEGORIES=    	www

HOMEPAGE=	http://linkchecker.sourceforge.net/

MAINTAINER=	Xavier Santolaria <xsa@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=linkchecker/}

MODULES=	lang/python

MODPY_DISTUTILS_INSTALLARGS=	--no-compile

BUILD_DEPENDS=	:py-dns-*:net/py-dns

NO_REGRESS=	Yes

.include <bsd.port.mk>
