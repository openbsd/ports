# $OpenBSD: Makefile,v 1.24 2006/10/02 17:47:09 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	"checks HTML documents for broken links"

DISTNAME=	linkchecker-4.5
CATEGORIES=    	www

HOMEPAGE=	http://linkchecker.sourceforge.net/

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

pre-build:
	@perl -pi -e "s,!!SITEPKG!!,${MODPY_SITEPKG},g" ${WRKSRC}/setup.py

.include <bsd.port.mk>
