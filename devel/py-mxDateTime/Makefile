# $OpenBSD: Makefile,v 1.11 2004/02/23 05:04:21 ish Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"Date and Time types for Python"

VERSION=	2.0.3
DISTNAME=	egenix-mx-base-${VERSION}
PKGNAME=	py-mxDateTime-${VERSION}
CATEGORIES=	devel

MASTER_SITES=	http://www.lemburg.com/files/python/

HOMEPAGE=	http://www.lemburg.com/files/python/eGenix-mx-Extensions.html

MAINTAINER=	Jason Ish <ish@openbsd.org>

# eGenix.com Public License Agreement
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

FLAVORS=	py2.1 py2.3
FLAVOR?=	py2.3

.if ${FLAVOR} == "py2.1"
MODPY_VERSION=	2.1
.endif

MODULES=	python

NO_REGRESS=	Yes

.include <bsd.port.mk>
