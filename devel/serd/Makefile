# $OpenBSD: Makefile,v 1.2 2021/11/02 00:01:12 sthen Exp $

COMMENT=	lightweight C library for RDF syntax

DISTNAME=	serd-0.30.10
REVISION=	0

SHARED_LIBS=	serd-0	0.0 # 0.30

CATEGORIES=	devel

HOMEPAGE=	https://drobilla.net/software/serd

MAINTAINER=	Dimitri Karamazov <deserter666@danwin1210.me>

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB +=	c m

MASTER_SITES=	https://download.drobilla.net/

EXTRACT_SUFX=	.tar.bz2

MODULES=	lang/python

# requires library gcov
NO_TEST=	Yes

do-configure:
	cd ${WRKSRC} && env -i ${CONFIGURE_ENV} \
		${MODPY_BIN} ./waf configure \
		--prefix=${PREFIX} \
		--mandir=${PREFIX}/man

do-build:
	cd ${WRKSRC} && env -i ${MAKE_ENV} ${MODPY_BIN} ./waf -v

do-install:
	cd ${WRKSRC} && env -i ${MAKE_ENV} ${MODPY_BIN} ./waf install \
		--destdir=${DESTDIR}

.include <bsd.port.mk>
