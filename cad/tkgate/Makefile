# $OpenBSD: Makefile,v 1.1.1.1 2015/04/07 14:00:07 kirby Exp $

COMMENT =		Tcl/Tk based digital circuit editor and simulator

DISTNAME =		tkgate-2.0-rc3
PKGNAME = 		tkgate-2.0rc3

CATEGORIES =		cad x11

HOMEPAGE =		http://www.tkgate.org/

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

MASTER_SITES =		https://bitbucket.org/starling13/tkgate/downloads/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE SM X11 c m pthread ${MODTK_WANTLIB}

MODULES =		converters/libiconv \
			x11/tk

BUILD_DEPENDS = 	${MODTK_BUILD_DEPENDS}
RUN_DEPENDS = 		${MODTK_RUN_DEPENDS} \
			devel/desktop-file-utils

SEPARATE_BUILD = 	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV += 	TKGATE_LIBDIRS="${MODTCL_LIBDIR} ${MODTK_LIBDIR} \
				${LOCALBASE}/lib ${X11BASE}/lib" \
			TKGATE_INCDIRS="${MODTCL_INCDIR} ${MODTK_INCDIR} \
				${LOCALBASE}/include ${X11BASE}/include" \
			TKGATE_TCLTK_VERSIONS=${MODTK_VERSION}

post-extract:
	rm ${WRKSRC}/src/gmac/luthor.c
	rm ${WRKSRC}/src/verga/luthor.c
	rm ${WRKSRC}/src/verga/vgrammar.c
	rm ${WRKSRC}/src/verga/vgrammar.h
	rm ${WRKSRC}/src/tkgate/luthor.c
	rm ${WRKSRC}/src/tkgate/vgrammar.c
	rm ${WRKSRC}/src/tkgate/vgrammar.h

pre-configure:
	${SUBST_CMD} ${WRKSRC}/scripts/parms.tcl ${WRKSRC}/src/tkgate/verilog_out.c
	${MODTCL_WISH_ADJ} ${WRKSRC}/scripts/tree.tcl

post-install:
	rm ${PREFIX}/share/tkgate/scripts/parms.tcl.*

.include <bsd.port.mk>
