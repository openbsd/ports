# $OpenBSD: Makefile,v 1.6 2002/06/09 05:36:25 wilfried Exp $

COMMENT=	"PostgreSQL database adapter for Python"

VERSION=	1.0.1
DISTNAME=	psycopg-${VERSION}
PKGNAME=	py-psycopg-${VERSION}
CATEGORIES=	databases
NEED_VERSION=	1.504

MASTER_SITES=	http://initd.org/pub/software/psycopg/
HOMEPAGE=	http://initd.org/software/psycopg

MAINTAINER=	Maurice Nonnekes <maurice@amaze.nl>

PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

FLAVORS=	zope
FLAVOR?=

PYTHON_VER=	2.1
DATETIME_PATH=	${LOCALBASE}/lib/python${PYTHON_VER}/site-packages/mx/DateTime

LIB_DEPENDS+=	pq.2::databases/postgresql
RUN_DEPENDS+=	:python-${PYTHON_VER}*:lang/python/${PYTHON_VER} \
		:py-mxDateTime->=2.0.0:devel/py-mxDateTime
BUILD_DEPENDS+=	${RUN_DEPENDS}

.if ${FLAVOR:L:Mzope}
RUN_DEPENDS+=	:zope-*:www/zope
.endif

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-python=python${PYTHON_VER}		\
		--with-python-version=${PYTHON_VER}		\
		--with-mxdatetime-includes=${DATETIME_PATH}/mxDateTime

SUBST_VARS=	PYTHON_VER

pre-install:
	mkdir -p ${PREFIX}/lib/zope/lib/python/Products/
	cp -r ${WRKSRC}/ZPsycopgDA/ ${PREFIX}/lib/zope/lib/python/Products/

.include <bsd.port.mk>
