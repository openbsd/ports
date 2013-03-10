# $OpenBSD: Makefile,v 1.2 2013/03/10 23:04:44 espie Exp $

COMMENT=	multi-protocol distributed load testing tool

V=		1.4.2
DISTNAME=	tsung-$V

CATEGORIES=	benchmarks net

HOMEPAGE=	http://www.process-one.net/en/tsung/

# GPLv2
PERMIT_PACKAGE_CDROM=          Yes

MASTER_SITES=		http://tsung.erlang-projects.org/dist/

MODPY_BUILD_DEP=	No
MODULES=		lang/python

BUILD_DEPENDS=		lang/erlang
RUN_DEPENDS=		graphics/py-matplotlib \
			lang/erlang \
			math/gnuplot \
			shells/bash

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		HOME=/tmp

MODPY_ADJ_FILES=	src/tsung-plotter/tsplot.py.in

TEST_TARGET=		test

SUBST_VARS+=		V

.include <bsd.port.mk>
