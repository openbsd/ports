# $OpenBSD: Makefile,v 1.2 2001/09/19 01:05:17 shell Exp $

COMMENT=	"PostgreSQL database adapter for Python"

VERSION=	0.99.6
DISTNAME=	psycopg-${VERSION}
PKGNAME=	py-psycopg-${VERSION}
CATEGORIES=	databases
NEED_VERSION=	1.457

MASTER_SITES=	http://initd.org/software/psycopg/
HOMEPAGE=	http://initd.org/Software/psycopg/

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
RUN_DEPENDS+=	python${PYTHON_VER}::lang/python		\
		${DATETIME_PATH}::devel/py-mxDateTime
BUILD_DEPENDS+=	${RUN_DEPENDS}

.if ${FLAVOR:L:Mzope}
RUN_DEPENDS+=	zope-instance::www/zope
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
