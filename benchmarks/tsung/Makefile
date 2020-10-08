# $OpenBSD: Makefile,v 1.13 2020/10/08 11:59:33 daniel Exp $

COMMENT=	multi-protocol distributed load testing tool

V=		1.7.0
DISTNAME=	tsung-$V
REVISION=	0

CATEGORIES=	benchmarks net

HOMEPAGE=	http://tsung.erlang-projects.org/

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=		http://tsung.erlang-projects.org/dist/

MODULES=		lang/erlang \
			lang/python
MODERL_VERSION=		19
MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}
MODPY_BUILDDEP= 	No

RUN_DEPENDS=		graphics/py-matplotlib${MODPY_FLAVOR} \
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

.include <bsd.port.mk>
