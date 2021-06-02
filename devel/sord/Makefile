# $OpenBSD: Makefile,v 1.2 2021/06/02 22:30:38 jca Exp $

COMMENT=	lightweight C library for storing RDF data in memory

DISTNAME=	sord-0.16.8

SHARED_LIBS=	sord-0	0.0 # 0.16

CATEGORIES=	devel

HOMEPAGE=	https://drobilla.net/software/sord

MAINTAINER=	Dimitri Karamazov <deserter666@danwin1210.me>

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB += c m pcre serd-0

MASTER_SITES=	https://download.drobilla.net/

EXTRACT_SUFX=	.tar.bz2

MODULES=	lang/python

LIB_DEPENDS=	devel/serd \
		devel/pcre

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
