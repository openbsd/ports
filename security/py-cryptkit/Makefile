# $OpenBSD: Makefile,v 1.5 2003/07/31 19:11:59 sturm Exp $

COMMENT=	"python Cryptographic Toolkit"

VERSION=	0.9
DISTNAME=	cryptkit-${VERSION}
PKGNAME=	py-cryptkit-${VERSION}
CATEGORIES=    	security devel

HOMEPAGE=	http://eevolved.com/cryptkit/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=cryptkit/}

MAINTAINER=	Shell Hung <shell@openbsd.org>

# BSD License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

FLAVORS=	py22
FLAVOR?=

MODULES=	python

.if ${FLAVOR:L:Mpy22}
MODPY_VERSION=	2.2
.else
MODPY_VERSION=	2.1
.endif

NO_REGRESS=	Yes

.include <bsd.port.mk>
