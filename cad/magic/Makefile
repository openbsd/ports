# $OpenBSD: Makefile,v 1.5 2020/03/08 12:47:35 sthen Exp $

COMMENT =	interactive system for VLSI circuit layouts
DISTNAME =	magic-8.2.190
EXTRACT_SUFX =	.tgz

CATEGORIES =	cad
HOMEPAGE =	http://opencircuitdesign.com/magic/
MAINTAINER =	Alessandro De Laurenzis <just22@atlantide.mooo.com>

# MIT (Magic, scmos), GPLv2 only (readline)
PERMIT_PACKAGE =	Yes

WANTLIB =	${MODTK_WANTLIB} c cairo fontconfig freetype m GL GLU X11

MASTER_SITES =	http://opencircuitdesign.com/magic/archive/

# The cpp preprocessor is used to generate .tech files; clang's breaks
# newlines: https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=698760
COMPILER =	ports-gcc
COMPILER_LANGS = c

MODULES =	x11/tk

LIB_DEPENDS =	${MODTK_LIB_DEPENDS} \
		graphics/cairo

RUN_DEPENDS =	shells/bash

WRKCONF =		${WRKSRC}/scripts
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--with-distdir=${PREFIX} \
			--with-tcl=${MODTCL_LIBDIR} \
			--with-tk=${MODTK_LIBDIR} \
			--with-cairo=${LOCALBASE}/include \
			--enable-cairo-offscreen

USE_GMAKE =	Yes

NO_TEST =	Yes

post-patch:
	@${SUBST_CMD} ${WRKSRC}/scripts/configure
	@${SUBST_CMD} ${WRKSRC}/utils/paths.h

post-install:
	mv ${PREFIX}/share/man/* ${PREFIX}/man/
	rmdir ${PREFIX}/share/man
	mv ${PREFIX}/lib/magic/doc ${PREFIX}/share/doc/magic
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/magic
	mv ${PREFIX}/lib/magic/tutorial ${PREFIX}/share/examples/magic/

.include <bsd.port.mk>
