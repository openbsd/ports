# $OpenBSD: Makefile,v 1.8 2002/03/21 20:46:25 espie Exp $


COMMENT=		"unit testing framework for python"

VERSION=		1.4.1
DISTNAME=		pyunit-${VERSION}
PKGNAME=		py-unit-${VERSION}
CATEGORIES=     	devel
NEED_VERSION=		1.515

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
BUILD_DEPENDS=	:python-tkinter-${PYTHON_VER}*:lang/python/${PYTHON_VER},-tkinter
.endif
BUILD_DEPENDS+=	:python-${PYTHON_VER}*:lang/python/${PYTHON_VER}

RUN_DEPENDS=	${BUILD_DEPENDS}
SUBST_VARS=	PYTHON_VER
NO_REGRESS=	Yes

do-build:
	cd ${WRKSRC}; python${PYTHON_VER} ./setup.py build \
		--build-base=${WRKSRC}

do-install:
	cd ${WRKSRC}; python${PYTHON_VER} ./setup.py install \
		--prefix=${PREFIX}

.include <bsd.port.mk>
