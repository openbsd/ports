COMMENT=		Ruby interface to the Tk graphical toolkit

DISTNAME=		tk-0.5.0
CATEGORIES=		x11

HOMEPAGE=		https://github.com/ruby/tk

MAINTAINER=		Jeremy Evans <jeremy@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

MODULES=		lang/ruby x11/tk
MODTK_VERSION=		8.6

CONFIGURE_STYLE=	ruby gem ext

MODRUBY_TEST=	rake

CONFIGURE_ARGS =	--with-tcl-include=${MODTCL_INCDIR} \
			--with-tk-include=${MODTK_INCDIR} \
			--with-tcllib=${MODTCL_LIB} \
			--with-tklib=${MODTK_LIB} \
			--with-X11-dir=${X11BASE}
WANTLIB =		X11 ${MODTK_WANTLIB}
LIB_DEPENDS =		${MODTK_LIB_DEPENDS}

.include <bsd.port.mk>
