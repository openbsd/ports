# $OpenBSD: Makefile,v 1.22 2009/04/06 18:21:26 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	Date and Time types for Python

VERSION=	3.1.2
DISTNAME=	egenix-mx-base-${VERSION}
PKGNAME=	py-mxDateTime-${VERSION}
CATEGORIES=	devel

MASTER_SITES=	http://www.lemburg.com/files/python/

HOMEPAGE=	http://www.egenix.com/products/python/mxBase/

# eGenix.com Public License Agreement
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MODULES=	lang/python

FLAVORS=	python2.4 python2.5      # Needed for Zope, e.g.
FLAVOR?=	python2.5

.if !${FLAVOR} || ${FLAVOR:L:Npython?.?}
ERRORS+=	"Fatal: You must select one version: ${FLAVORS}"
.endif

MODPY_VERSION=	${FLAVOR:S/python//}

NO_REGRESS=	Yes

post-install:
	find ${WRKINST} -name \*.egg-info -exec rm {} \;

.include <bsd.port.mk>
