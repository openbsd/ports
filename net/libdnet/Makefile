# $OpenBSD: Makefile,v 1.46 2019/07/12 20:48:30 sthen Exp $

COMMENT-main=	portable low-level networking library
COMMENT-python= python interface to libdnet

MODPY_EGG_VERSION= 1.12
REVISION=	13
DISTNAME=	libdnet-${MODPY_EGG_VERSION}
PKGNAME-main=	${DISTNAME}
PKGNAME-python= py-${DISTNAME}

SHARED_LIBS=	dnet	1.0

CATEGORIES=	net
HOMEPAGE=	https://github.com/dugsong/libdnet

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=		c

MASTER_SITES=		${MASTER_SITE_GOOGLECODE:=libdnet/}
EXTRACT_SUFX=		.tgz

PSEUDO_FLAVORS=		no_python
FLAVOR?=

CONFIGURE_STYLE=	gnu
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/config
MULTI_PACKAGES=		-main -python

# override python.port.mk's RUN_DEPENDS
RUN_DEPENDS-main=

CONFIGURE_ARGS +=	--without-check

.include <bsd.port.arch.mk>
.if ${BUILD_PACKAGES:M-python}
MODULES+=		lang/python
CONFIGURE_ARGS+=	--with-python
MAKE_FLAGS=		PYTHON=${MODPY_BIN}
TEST_DEPENDS=		net/libdnet,-python
TEST_FLAGS=		TESTS_ENVIRONMENT=${MODPY_BIN}
WANTLIB-python=		${MODPY_WANTLIB} m pthread util
.else
CONFIGURE_ARGS+=	--without-python
.endif

.include <bsd.port.mk>
