# $OpenBSD: Makefile,v 1.10 2004/02/21 23:22:22 xsa Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"checks HTML documents for broken links"

DISTNAME=	linkchecker-1.12.1
CATEGORIES=    	www

HOMEPAGE=	http://linkchecker.sourceforge.net/

MAINTAINER=	Xavier Santolaria <xsa@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=linkchecker/}

MODULES=	python

MODPY_DISTUTILS_INSTALLARGS=	--no-compile

BUILD_DEPENDS+=	:py-dns-*:net/py-dns

NO_REGRESS=	Yes

.include <bsd.port.mk>
