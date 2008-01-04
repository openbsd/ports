# $OpenBSD: Makefile,v 1.21 2008/01/04 17:48:37 espie Exp $

COMMENT-main=	portable low-level networking library
COMMENT-python= python interface to libdnet

DISTNAME=	libdnet-1.10
PKGNAME-main=	${DISTNAME}p2
PKGNAME-python= ${DISTNAME:S/^libdnet/py-libdnet/}p3
SHARED_LIBS=	dnet	1.0
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libdnet/}

HOMEPAGE=	http://libdnet.sourceforge.net/

MAINTAINER=	Michael Coulter <mjc@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

PSEUDO_FLAVORS=		no_python
FLAVOR?=

USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
MULTI_PACKAGES=		-main

RUN_DEPENDS-main=

CONFIGURE_ARGS +=	--without-check
.if ${FLAVOR:L:Mno_python}
CONFIGURE_ARGS+=	--without-python
.else
MODULES+=		lang/python
MULTI_PACKAGES+=	-python
CONFIGURE_ARGS+=	--with-python
MAKE_FLAGS=		PYTHON=${MODPY_BIN}
REGRESS_DEPENDS=	::net/libdnet,-python
REGRESS_FLAGS=		TESTS_ENVIRONMENT=${MODPY_BIN}
WANTLIB-python=
.endif

.include <bsd.port.mk>
