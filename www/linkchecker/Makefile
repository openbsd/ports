# $OpenBSD: Makefile,v 1.15 2004/08/03 14:14:57 xsa Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"checks HTML documents for broken links"

DISTNAME=	linkchecker-1.12.3
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

BUILD_DEPENDS+=	:py-dns-*:net/py-dns

NO_REGRESS=	Yes

post-install:
	@chmod ${MANMODE} ${PREFIX}/man/man1/linkchecker.1
	@chmod ${SHAREMODE} ${PREFIX}/share/examples/linkchecker/*

.include <bsd.port.mk>
