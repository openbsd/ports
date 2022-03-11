COMMENT =	multi-level, over-the-cell maze router for VLSI design
DISTNAME =	qrouter-1.4.84
EXTRACT_SUFX =	.tgz
CATEGORIES =	cad

HOMEPAGE =	http://opencircuitdesign.com/qrouter/
MAINTAINER =	Alessandro De Laurenzis <just22@atlantide.mooo.com>

# GPLv2 only
PERMIT_PACKAGE =	Yes

WANTLIB =	${MODTK_WANTLIB} c m ICE X11 SM

MASTER_SITES =	http://opencircuitdesign.com/qrouter/archive/

MODULES =	x11/tk

LIB_DEPENDS =	${MODTK_LIB_DEPENDS}

USE_GMAKE =	Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		X11BASE="${X11BASE}"
CONFIGURE_ARGS +=	--with-distdir=${PREFIX} \
			--with-tcl=${MODTCL_LIBDIR} \
			--with-tk=${MODTK_LIBDIR}

# Not C99
CFLAGS +=	-Wno-return-type

NO_TEST =	Yes

.include <bsd.port.mk>
