# $OpenBSD: Makefile,v 1.14 2005/09/23 19:41:43 pvalchev Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"fast array facility to the Python language"

VERSION=	23.1
DISTNAME=	Numeric-${VERSION}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	math

# Python License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		m

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=numpy/}
HOMEPAGE=	http://www.pfdubois.com/numpy/

MODULES=	lang/python

do-regress:
	cd ${WRKSRC}/Test && ${MODPY_BIN} -i test.py

.include <bsd.port.mk>
