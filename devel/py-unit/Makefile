# $OpenBSD: Makefile,v 1.4 2001/08/31 22:16:50 shell Exp $


COMMENT=		"unit testing framework for python"

VERSION=		1.4.1
DISTNAME=		pyunit-${VERSION}
PKGNAME=		py-unit-${VERSION}
CATEGORIES=     	devel
NEED_VERSION=		1.448

HOMEPAGE=		http://pyunit.sourceforge.net/

MAINTAINER=		Shell Hung <shell@openbsd.org>

# Python License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	pyunit

FLAVORS=		no_x11
FLAVOR?=

PYTHON_VER=	2.1

.if ${FLAVOR} != "no_x11"
PY_MODULE=	${LOCALBASE}/lib/python${PYTHON_VER}/lib-dynload/_tkinter.so
RUN_DEPENDS=	${PY_MODULE}::lang/python,tk
.else
RUN_DEPENDS=	python${PYTHON_VER}::lang/python
.endif

BUILD_DEPENDS=	${RUN_DEPENDS}

SUBST_VARS=	PYTHON_VER

do-build:
	cd ${WRKSRC}; python${PYTHON_VER} ./setup.py build \
		--build-base=${WRKSRC}

do-install:
	cd ${WRKSRC}; python${PYTHON_VER} ./setup.py install \
		--prefix=${PREFIX}

.include <bsd.port.mk>
