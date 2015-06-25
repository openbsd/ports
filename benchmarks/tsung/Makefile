# $OpenBSD: Makefile,v 1.8 2015/06/25 13:28:59 jasper Exp $

COMMENT=	multi-protocol distributed load testing tool

V=		1.5.1
DISTNAME=	tsung-$V
REVISION=	3

CATEGORIES=	benchmarks net

HOMEPAGE=	http://tsung.erlang-projects.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://tsung.erlang-projects.org/dist/

MODPY_BUILDDEP= 	No
MODULES=		lang/erlang \
			lang/python

RUN_DEPENDS=		graphics/py-matplotlib \
			math/gnuplot \
			shells/bash

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		HOME=/tmp \
			ERL=${LOCALBASE}/bin/erl${MODERL_VERSION} \
			ERLC=${LOCALBASE}/bin/erlc${MODERL_VERSION} \

MODPY_ADJ_FILES=	src/tsung-plotter/tsplot.py.in

TEST_TARGET=		test

FAKE_FLAGS=		CONFDIR="${PREFIX}/share/examples/tsung/" \
			MAN_DIR="${PREFIX}/man/man1/"

SUBST_VARS+=		V

pre-configure:
	${SUBST_CMD} ${WRKSRC}/tsung.sh.in ${WRKSRC}/tsung-recorder.sh.in

.include <bsd.port.mk>
