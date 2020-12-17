# $OpenBSD: Makefile,v 1.34 2020/12/17 10:18:46 sthen Exp $

COMMENT=	PostgreSQL tools from Skype

MODPY_EGG_VERSION=	3.2.6
GH_ACCOUNT=	pgq
GH_PROJECT=	skytools-legacy
GH_TAGNAME=	${MODPY_EGG_VERSION}
PKGNAME=	skytools-${MODPY_EGG_VERSION}

CATEGORIES=	databases

HOMEPAGE=	https://wiki.postgresql.org/wiki/SkyTools

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	c pq pthread ${MODPY_WANTLIB}

MODULES=	lang/python

MASTER_SITES0=	https://github.com/markokr/libusual/archive/
DISTFILES=	${DISTNAME}.tar.gz libusual-{}2c1cb7f9bfa0a2a183354eb2630a3e4136d0f96b.tar.gz:0

BUILD_DEPENDS=	databases/postgresql,-server>=12 \
		databases/postgresql,-main>=12 \
		textproc/asciidoc \
		textproc/xmlto
LIB_DEPENDS=	databases/postgresql,-main>=12
RUN_DEPENDS=	databases/py-psycopg2

NO_TEST=	Yes
USE_GMAKE=	Yes

CONFIGURE_STYLE= autoreconf
AUTOCONF_VERSION= 2.69
AUTOMAKE_VERSION= 1.16
AUTORECONF=	./autogen.sh
CONFIGURE_ARGS=	--with-python=${MODPY_BIN} \
		--with-asciidoc

MAKE_ENV=	PYTHON=${MODPY_BIN}
MAKE_FLAGS=	V=1

post-extract:
	mv ${WRKDIR}/libusual-*/* ${WRKSRC}/lib/

pre-configure:
	find ${WRKSRC} -name '*.py' \
		-exec sed -i 's,/usr/bin/env python,${MODPY_BIN},' {} +

.include <bsd.port.mk>
