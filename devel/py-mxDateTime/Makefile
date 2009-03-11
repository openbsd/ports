# $OpenBSD: Makefile,v 1.21 2009/03/11 21:11:29 bernd Exp $

SHARED_ONLY=	Yes

COMMENT=	Date and Time types for Python

VERSION=	2.0.5
DISTNAME=	egenix-mx-base-${VERSION}
PKGNAME=	py-mxDateTime-${VERSION}p4
CATEGORIES=	devel

MASTER_SITES=	http://www.lemburg.com/files/python/

HOMEPAGE=	http://www.lemburg.com/files/python/eGenix-mx-Extensions.html

MAINTAINER=	Jason Ish <ish@openbsd.org>

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

MODPY_VERSION=          ${FLAVOR:S/python//}

NO_REGRESS=	Yes

post-install:
	find ${WRKINST} -name \*.egg-info -exec rm {} \;

.include <bsd.port.mk>
