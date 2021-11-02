# $OpenBSD: Makefile,v 1.2 2021/11/02 00:00:14 sthen Exp $

COMMENT=	library for serialising LV2 atoms to/from RDF

V=		0.6.8
DISTNAME=	sratom-${V}
REVISION=	0

SHARED_LIBS=	sratom-0	0.0 # 0.6

CATEGORIES=	audio

HOMEPAGE=	https://drobilla.net/software/sratom

MAINTAINER=     Dimitri Karamazov <deserter666@danwin1210.me>

# MIT
PERMIT_PACKAGE= Yes

WANTLIB += m serd-0 sord-0

MASTER_SITES=	https://download.drobilla.net/

EXTRACT_SUFX=	.tar.bz2

MODULES=	lang/python

BUILD_DEPENDS=	audio/lv2

LIB_DEPENDS=	devel/serd \
		devel/sord

RUN_DEPENDS=	audio/lv2

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
