# $OpenBSD: Makefile,v 1.22 2006/07/05 18:31:07 alek Exp $

SHARED_ONLY=	Yes

COMMENT=	"checks HTML documents for broken links"

DISTNAME=	linkchecker-4.1
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
