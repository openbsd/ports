# $OpenBSD: Makefile,v 1.10 2003/10/21 19:51:50 sturm Exp $

COMMENT=	"fast array facility to the Python language"

VERSION=	23.1
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

MODULES=	python

do-regress:
	cd ${WRKSRC}/Test && ${MODPY_BIN} -i test.py

.include <bsd.port.mk>
