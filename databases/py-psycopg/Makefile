# $OpenBSD: Makefile,v 1.18 2005/02/27 11:30:06 alek Exp $

SHARED_ONLY=	Yes

COMMENT=	"PostgreSQL database adapter for Python"
COMMENT-zope=	"database adapter for Zope"

VERSION=	1.1.15
DISTNAME=	psycopg-${VERSION}
PKGNAME=	py-psycopg-${VERSION}
FULLPKGNAME=	${PKGNAME}
CATEGORIES=	databases

MASTER_SITES=	http://initd.org/pub/software/psycopg/
HOMEPAGE=	http://initd.org/projects/psycopg1

MAINTAINER=	Aleksander Piotrowski <alek@openbsd.org>

PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
WANTLIB=		crypto util

PSEUDO_FLAVORS=	no_zope
FLAVOR?=

PYTHON_VER=	2.3
DATETIME_PATH=	${LOCALBASE}/lib/python${PYTHON_VER}/site-packages/mx/DateTime

RUN_DEPENDS=	:postgresql-server-*:databases/postgresql,-server \
		:python-${PYTHON_VER}*:lang/python/${PYTHON_VER} \
		:py-mxDateTime->=2.0.0-py${PYTHON_VER}:devel/py-mxDateTime,py${PYTHON_VER}
BUILD_DEPENDS=	${RUN_DEPENDS}

.if empty(FLAVOR:L:Mno_zope)
MULTI_PACKAGES=	-zope
SUBPACKAGE?=

FULLPKGNAME-zope=	py-psycopg-zope-${VERSION}

.  if defined(PACKAGING) && ${SUBPACKAGE} == "-zope"
RUN_DEPENDS=	:zope-*:www/zope \
		:py-psycopg-${VERSION}*:databases/py-psycopg
PKG_ARCH=	*
.  endif
.endif

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-mxdatetime-includes=${DATETIME_PATH}/mxDateTime
CONFIGURE_ENV=	PYTHON=${LOCALBASE}/bin/python${PYTHON_VER}

SUBST_VARS=	PYTHON_VER

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/zope/lib/python/Products/
	cd ${WRKSRC}; tar cf - ZPsycopgDA | tar xf - -C ${PREFIX}/lib/zope/lib/python/Products
	${CHOWN} -R ${LIBOWN}:${LIBGRP} ${PREFIX}/lib/zope/lib/python/Products/ZPsycopgDA

do-regress: fake
	env PYTHONPATH=${WRKINST}${LOCALBASE}/lib/python${PYTHON_VER}/lib-dynload \
	python${PYTHON_VER} ${WRKSRC}/tests/check_types.py "dbname=template1 user=_postgresql" \
		| diff -uw - ${WRKSRC}/tests/check_types.expected

.include <bsd.port.mk>
