# $OpenBSD: Makefile,v 1.6 2015/06/23 16:38:10 jasper Exp $

COMMENT=	multi-protocol distributed load testing tool

V=		1.5.1
DISTNAME=	tsung-$V
REVISION=	1

CATEGORIES=	benchmarks net

HOMEPAGE=	http://tsung.erlang-projects.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://tsung.erlang-projects.org/dist/

MODPY_BUILDDEP= 	No
MODULES=		lang/python

BUILD_DEPENDS=		lang/erlang/16
RUN_DEPENDS=		graphics/py-matplotlib \
			lang/erlang/16 \
			math/gnuplot \
			shells/bash

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		HOME=/tmp

MODPY_ADJ_FILES=	src/tsung-plotter/tsplot.py.in

TEST_TARGET=		test

FAKE_FLAGS=		CONFDIR="${PREFIX}/share/examples/tsung/" \
			MAN_DIR="${PREFIX}/man/man1/"

SUBST_VARS+=		V

.include <bsd.port.mk>
