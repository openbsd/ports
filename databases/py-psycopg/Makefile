# $OpenBSD: Makefile,v 1.14 2004/08/11 20:53:40 sturm Exp $

COMMENT=	"PostgreSQL database adapter for Python"

VERSION=	1.1.4
DISTNAME=	psycopg-${VERSION}
PKGNAME=	py-psycopg-${VERSION}
CATEGORIES=	databases

MASTER_SITES=	http://initd.org/pub/software/psycopg/
HOMEPAGE=	http://initd.org/software/psycopg

PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

FLAVORS=	zope
FLAVOR?=

PYTHON_VER=	2.1
DATETIME_PATH=	${LOCALBASE}/lib/python${PYTHON_VER}/site-packages/mx/DateTime

RUN_DEPENDS=	:postgresql-server-*:databases/postgresql,-server \
		:python-${PYTHON_VER}*:lang/python/${PYTHON_VER} \
		:py-mxDateTime->=2.0.0-py2.1:devel/py-mxDateTime,py2.1
BUILD_DEPENDS=	${RUN_DEPENDS}

.if ${FLAVOR:L:Mzope}
RUN_DEPENDS+=	:zope-*:www/zope
.endif

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-python=python${PYTHON_VER}		\
		--with-python-version=${PYTHON_VER}		\
		--with-mxdatetime-includes=${DATETIME_PATH}/mxDateTime

SUBST_VARS=	PYTHON_VER

NO_REGRESS=	Yes

pre-install:
	mkdir -p ${PREFIX}/lib/zope/lib/python/Products/
	cp -r ${WRKSRC}/ZPsycopgDA/ ${PREFIX}/lib/zope/lib/python/Products/

.include <bsd.port.mk>
