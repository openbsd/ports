# $OpenBSD: Makefile,v 1.1.1.1 2001/07/01 07:19:08 shell Exp $


COMMENT=		"python library for creating postscript or PDF charts"

VERSION=		1.10
DISTNAME=		PyChart-${VERSION}
PKGNAME=		py-Chart-${VERSION}
CATEGORIES=     	textproc devel
NEED_VERSION=		1.417

HOMEPAGE=		http://www.cs.washington.edu/homes/yasushi/pychart/

MAINTAINER=		Shell Hung <shell@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}

FLAVORS=		python1
FLAVOR?=

.if ${FLAVOR:L:Mpython1}
PYTHON_VER=	1.5
PYTHON_EXT=	15
PYTHON_PATH=	${LOCALBASE}/lib/python${PYTHON_VER}
RUN_DEPENDS=	${PYTHON_PATH}/site-packages/distutils::devel/py-Distutils
.else
PYTHON_VER=	2.1
.endif

RUN_DEPENDS+=	python${PYTHON_VER}::lang/python${PYTHON_EXT}
BUILD_DEPENDS=	${RUN_DEPENDS}

SUBST_VARS=	PYTHON_VER
NO_CONFIGURE=	Yes

do-build:
	cd ${WRKSRC}; python${PYTHON_VER} ./setup.py build \
		--build-base=${WRKSRC}

do-install:
	cd ${WRKSRC}; python${PYTHON_VER} ./setup.py install \
		--prefix=${PREFIX}

.include <bsd.port.mk>
