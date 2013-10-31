# $OpenBSD: Makefile,v 1.39 2013/10/31 21:12:12 sthen Exp $

COMMENT-main=	portable low-level networking library
COMMENT-python= python interface to libdnet

MODPY_EGG_VERSION= 1.12
DISTNAME=	libdnet-${MODPY_EGG_VERSION}
PKGNAME-main=	${DISTNAME}
PKGNAME-python= py-${DISTNAME}
REVISION=	9

SHARED_LIBS=	dnet	1.0

CATEGORIES=	net
HOMEPAGE=	https://code.google.com/p/libdnet/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c

MASTER_SITES=		https://libdnet.googlecode.com/files/
EXTRACT_SUFX=		.tgz

PSEUDO_FLAVORS=		no_python
NOT_FOR_ARCHS-python=	${NO_SHARED_ARCHS}
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
WANTLIB-python=
.else
CONFIGURE_ARGS+=	--without-python
.endif

.include <bsd.port.mk>
