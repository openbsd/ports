COMMENT=	multi-protocol distributed load testing tool

V=		1.8.0
GH_ACCOUNT=	processone
GH_PROJECT=	tsung
GH_TAGNAME=	v${V}
REVISION=	1

CATEGORIES=	benchmarks net

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=		lang/erlang \
			lang/python
MODERL_VERSION=		25
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

post-install:
	${MODPY_COMPILEALL} ${PREFIX}/lib/tsung

.include <bsd.port.mk>
