# $OpenBSD: Makefile,v 1.3 2001/08/10 19:16:47 shell Exp $


COMMENT=		"python codes checker"

VERSION=		0.8
DISTNAME=		pychecker-${VERSION}
PKGNAME=		py-Checker-${VERSION}
CATEGORIES=     	devel
NEED_VERSION=		1.434

HOMEPAGE=		http://pychecker.sourceforge.net/

MAINTAINER=		Shell Hung <shell@openbsd.org>

# BSD License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	pychecker

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

do-build:
	cd ${WRKSRC}; python${PYTHON_VER} ./setup.py build \
		--build-base=${WRKSRC}

do-install:
	cd ${WRKSRC}; python${PYTHON_VER} ./setup.py install \
		--prefix=${PREFIX}

.include <bsd.port.mk>
