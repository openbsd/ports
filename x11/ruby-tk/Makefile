COMMENT=		ruby graphical tooklit using Tk

DISTNAME=		tk-0.4.0
CATEGORIES=		x11

HOMEPAGE=		https://github.com/ruby/tk

MAINTAINER=		Jeremy Evans <jeremy@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

MODULES=		lang/ruby x11/tk

CONFIGURE_STYLE=	ruby gem ext

MODRUBY_TEST=	rake

CONFIGURE_ARGS =	--with-tcl-include=${MODTCL_INCDIR} \
			--with-tk-include=${MODTK_INCDIR} \
			--with-tcllib=${MODTCL_LIB} \
			--with-tklib=${MODTK_LIB} \
			--with-X11-dir=${X11BASE}
WANTLIB =		X11 ${MODTCL_LIB} ${MODTK_LIB}
LIB_DEPENDS =		${MODTK_LIB_DEPENDS}

.include <bsd.port.mk>
