# $OpenBSD: Makefile,v 1.5 2019/07/12 20:43:45 sthen Exp $

COMMENT =	tool for netlist comparison (LVS) and format manipulation
DISTNAME =	netgen-1.5.118
EXTRACT_SUFX =	.tgz
REVISION =	2

CATEGORIES =	cad

HOMEPAGE =	http://opencircuitdesign.com/netgen/

MAINTAINER =	Alessandro De Laurenzis <just22@atlantide.t28.net>

# GPLv1
PERMIT_PACKAGE =	Yes

WANTLIB =	${MODTK_WANTLIB} X11 c m

MASTER_SITES =	http://opencircuitdesign.com/netgen/archive/

MODULES =	x11/tk \
		lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}

LIB_DEPENDS =	${MODTK_LIB_DEPENDS}

RUN_DEPENDS =	shells/bash

PATCHORIG =	.patch.orig

WRKCONF =		${WRKSRC}/scripts
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${X11BASE}/include" \
			CFLAGS="-std=gnu89 ${CFLAGS}"
CONFIGURE_ARGS =	--with-tcl=${MODTCL_LIBDIR} \
			--with-tk=${MODTK_LIBDIR}

USE_GMAKE =	Yes

NO_TEST =	Yes

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
	    ${PREFIX}/lib/netgen/python
	mv ${PREFIX}/lib/netgen/doc ${PREFIX}/share/doc/netgen

.include <bsd.port.mk>
