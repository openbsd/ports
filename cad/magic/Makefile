# $OpenBSD: Makefile,v 1.4 2019/07/12 20:43:45 sthen Exp $

COMMENT =	interactive system for VLSI circuit layouts
DISTNAME =	magic-8.1.224
EXTRACT_SUFX =	.tgz

CATEGORIES =	cad
HOMEPAGE =	http://opencircuitdesign.com/magic/
MAINTAINER =	Alessandro De Laurenzis <just22@atlantide.t28.net>

# MIT (Magic, scmos), GPLv2 only (readline)
PERMIT_PACKAGE =	Yes

WANTLIB =	${MODTK_WANTLIB} c m GL GLU X11

MASTER_SITES =	http://opencircuitdesign.com/magic/archive/

# The cpp preprocessor is used to generate .tech files; clang's breaks
# newlines: https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=698760
COMPILER =	ports-gcc
COMPILER_LANGS = c

MODULES =	x11/tk

BUILD_DEPENDS =	devel/m4
RUN_DEPENDS =	shells/bash
LIB_DEPENDS =	${MODTK_LIB_DEPENDS}

PATCHORIG =	.patch.orig

WRKCONF =		${WRKSRC}/scripts
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--with-tcl=${MODTCL_LIBDIR} \
			--with-tk=${MODTK_LIBDIR} \
			--with-opengl=no

USE_GMAKE =	Yes

NO_TEST =	Yes

post-patch:
	@${SUBST_CMD} ${WRKSRC}/scripts/configure
	@${SUBST_CMD} ${WRKSRC}/utils/paths.h

post-install:
	mv ${PREFIX}/lib/magic/doc ${PREFIX}/share/doc/magic
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/magic
	mv ${PREFIX}/lib/magic/tutorial ${PREFIX}/share/examples/magic/

.include <bsd.port.mk>
