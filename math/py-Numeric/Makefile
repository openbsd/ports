# $OpenBSD: Makefile,v 1.9 2003/07/31 19:11:59 sturm Exp $

COMMENT=	"fast array facility to the Python language"

VERSION=	22.0
DISTNAME=	Numeric-${VERSION}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	math

MAINTAINER=	Shell Hung <shell@openbsd.org>

# Python License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=numpy/}
HOMEPAGE=	http://www.pfdubois.com/numpy/

FLAVORS=	python2.1
FLAVOR?=

MODULES=	python

.if ${FLAVOR:L:Mpython2.1}
MODPY_VERSION=	2.1
.endif

NO_REGRESS=	Yes

.include <bsd.port.mk>
