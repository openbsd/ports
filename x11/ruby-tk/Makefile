COMMENT=		Ruby interface to the Tk graphical toolkit

DISTNAME=		tk-0.4.0
CATEGORIES=		x11
REVISION=		0

HOMEPAGE=		https://github.com/ruby/tk

MAINTAINER=		Jeremy Evans <jeremy@openbsd.org>

SITES.github=  		https://github.com/ruby/tk/commit/
PATCHFILES.github=     	ruby-tk-undef-fix{bf02b2aaa1e4d7688b84ea771a56d9d53e63015c}.patch
PATCH_DIST_STRIP=       -p1

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
