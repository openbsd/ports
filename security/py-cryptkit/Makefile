# $OpenBSD: Makefile,v 1.7 2004/02/09 09:34:14 xsa Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"Python Cryptographic Toolkit"

DISTNAME=	cryptkit-0.9
PKGNAME=	py-${DISTNAME}
CATEGORIES=    	security devel

HOMEPAGE=	http://eevolved.com/cryptkit/

MAINTAINER=	Shell Hung <shell@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=cryptkit/}

MODULES=	python

NO_REGRESS=	Yes

.include <bsd.port.mk>
