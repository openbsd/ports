COMMENT =	interactive system for VLSI circuit layouts

DISTNAME =	magic-8.3.393
EXTRACT_SUFX =	.tgz
REVISION =	0

CATEGORIES =	cad
HOMEPAGE =	http://opencircuitdesign.com/magic/
MAINTAINER =	Alessandro De Laurenzis <just22@atlantide.mooo.com>

# MIT (Magic, scmos), GPLv2 only (readline)
PERMIT_PACKAGE = Yes

WANTLIB =	${MODTK_WANTLIB} GL GLU X11 Xext Xi Xmu c cairo fontconfig \
		freetype m z

SITES =		http://opencircuitdesign.com/magic/archive/

COMPILER =	base-clang ports-gcc
COMPILER_LANGS = c

CFLAGS_base-clang =	-Wno-error=int-conversion

MODULES =	lang/python \
		x11/tk
MODPY_RUNDEP =	No

LIB_DEPENDS =	${MODTK_LIB_DEPENDS} \
		graphics/cairo

RUN_DEPENDS =	shells/bash

WRKCONF =	${WRKSRC}/scripts

USE_GMAKE=	Yes
# see scripts/defs.mak.in; if not overridden this calls git, which is very
# noisy in a non-git checkout if git is installed
MAKE_FLAGS=	MAGIC_COMMIT=

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--enable-cairo-offscreen \
			--with-distdir=${PREFIX} \
			--with-tcl=${MODTCL_LIBDIR} \
			--with-tk=${MODTK_LIBDIR}
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

# Not so noisy with Clang
CFLAGS +=	-Wno-parentheses

NO_TEST =	Yes

post-patch:
	@${SUBST_CMD} ${WRKSRC}/utils/paths.h

post-install:
	mv ${PREFIX}/share/man/* ${PREFIX}/man/
	rmdir ${PREFIX}/share/man
	mv ${PREFIX}/lib/magic/doc ${PREFIX}/share/doc/magic
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/magic
	mv ${PREFIX}/lib/magic/tutorial ${PREFIX}/share/examples/magic/

.include <bsd.port.mk>
