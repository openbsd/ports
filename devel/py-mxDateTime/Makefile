# $OpenBSD: Makefile,v 1.7 2002/10/25 22:37:52 naddy Exp $

COMMENT=	"Date and Time types for Python"

VERSION=	2.0.3
DISTNAME=	egenix-mx-base-${VERSION}
PKGNAME=	py-mxDateTime-${VERSION}
CATEGORIES=	devel

MASTER_SITES=	http://www.lemburg.com/files/python/

HOMEPAGE=	http://www.lemburg.com/files/python/eGenix-mx-Extensions.html

MAINTAINER=	Maurice Nonnekes <maurice@amaze.nl>

PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

PYTHON_VER=	2.1

RUN_DEPENDS+=	:python-${PYTHON_VER}*:lang/python/${PYTHON_VER}
BUILD_DEPENDS+=	${RUN_DEPENDS}

NO_REGRESS=	Yes
SUBST_VARS=	PYTHON_VER

do-build:
	cd ${WRKSRC}; python${PYTHON_VER} ./setup.py build \
		--build-base=${WRKSRC}

do-install:
	cd ${WRKSRC}; python${PYTHON_VER} ./setup.py install \
		--prefix=${PREFIX}

.include <bsd.port.mk>
