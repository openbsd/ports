# $OpenBSD: Makefile,v 1.1.1.1 2001/07/20 17:41:50 shell Exp $

COMMENT=	"Date and Time types for Python"

VERSION=	2.0.2
DISTNAME=	egenix-mx-base-${VERSION}
PKGNAME=	py-mxDateTime-${VERSION}
CATEGORIES=	devel
NEED_VERSION=	1.427

MASTER_SITES=	http://www.lemburg.com/files/python/

HOMEPAGE=	http://www.lemburg.com/files/python/eGenix-mx-Extensions.html

MAINTAINER=	Maurice Nonnekes <maurice@amaze.nl>

PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

NO_CONFIGURE=	Yes

FLAVORS=	python1
FLAVOR?=	

.if ${FLAVOR:L:Mpython1}
PYTHON_VER=	1.5
PYTHON_EXT=	15
PYTHON_PATH=	${LOCALBASE}/lib/python${PYTHON_VER}
RUN_DEPENDS=	${PYTHON_PATH}/site-packages/distutils::devel/py-Distutils
.else
PYTHON_VER=	2.1
PYTHON_EXT=
.endif

RUN_DEPENDS+=	python${PYTHON_VER}::lang/python${PYTHON_EXT}
BUILD_DEPENDS=	${RUN_DEPENDS}

SUBST_VARS=	PYTHON_VER

do-build:
	cd ${WRKSRC}; python${PYTHON_VER} ./setup.py build \
		--build-base=${WRKSRC}

do-install:
	cd ${WRKSRC}; python${PYTHON_VER} ./setup.py install \
		--prefix=${PREFIX}

.include <bsd.port.mk>
