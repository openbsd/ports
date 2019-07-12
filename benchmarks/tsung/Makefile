# $OpenBSD: Makefile,v 1.11 2019/07/12 20:43:43 sthen Exp $

COMMENT=	multi-protocol distributed load testing tool

V=		1.5.1
DISTNAME=	tsung-$V
REVISION=	4

CATEGORIES=	benchmarks net

HOMEPAGE=	http://tsung.erlang-projects.org/

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=		http://tsung.erlang-projects.org/dist/

MODPY_BUILDDEP= 	No
MODULES=		lang/erlang \
			lang/python

RUN_DEPENDS=		graphics/py-matplotlib \
			math/gnuplot \
			shells/bash

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		HOME=/tmp \
			ERL=${MODERL_ERL} \
			ERLC=${MODERL_ERLC}

MODPY_ADJ_FILES=	src/tsung-plotter/tsplot.py.in

TEST_TARGET=		test

FAKE_FLAGS=		CONFDIR="${PREFIX}/share/examples/tsung/" \
			MAN_DIR="${PREFIX}/man/man1/"

SUBST_VARS+=		V

pre-configure:
	${SUBST_CMD} ${WRKSRC}/tsung.sh.in ${WRKSRC}/tsung-recorder.sh.in

.include <bsd.port.mk>
