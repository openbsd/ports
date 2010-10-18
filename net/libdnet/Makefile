# $OpenBSD: Makefile,v 1.25 2010/10/18 18:36:49 espie Exp $

COMMENT-main=	portable low-level networking library
COMMENT-python= python interface to libdnet

MODPY_EGG_VERSION=1.12
DISTNAME=	libdnet-${MODPY_EGG_VERSION}
PKGNAME-main=	${DISTNAME}
PKGNAME-python= py-${DISTNAME}
REVISION-main=	0
REVISION-python= 0

SHARED_LIBS=	dnet	1.0

CATEGORIES=	net
HOMEPAGE=	http://code.google.com/p/libdnet/
MAINTAINER=	Michael Coulter <mjc@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c

MASTER_SITES=		http://libdnet.googlecode.com/files/
EXTRACT_SUFX=		.tgz

PSEUDO_FLAVORS=		no_python
FLAVOR?=

USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/config
MULTI_PACKAGES=		-main
USE_GROFF =	Yes

# override python.port.mk's RUN_DEPENDS
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
