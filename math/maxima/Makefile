COMMENT=		GPL computer algebra system based on DOE Macsyma

VERSION=		5.46.0
DISTNAME=		maxima-${VERSION}
CATEGORIES=		math

HOMEPAGE=		http://maxima.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += c ecl ffi gc gmp m pthread

SITES=			${SITE_SOURCEFORGE:=maxima/}

USE_GMAKE=		yes

BUILD_DEPENDS =		print/texinfo
LIB_DEPENDS=		lang/ecl
RUN_DEPENDS =		devel/desktop-file-utils \
			misc/rlwrap \
			misc/shared-mime-info

SUBST_VARS=		VERSION

MAKE_FLAGS =		MAKEINFO="${LOCALBASE}/bin/gtexi2any" \
			TEXI2DVI="${LOCALBASE}/bin/gtexi2dvi"

CONFIGURE_ARGS+=	--enable-ecl
CONFIGURE_STYLE=	gnu

FLAVORS=		no_x11
FLAVOR?=

.if !${FLAVOR:Mno_x11}
MODULES+=		x11/tk
MODTK_VERSION =		8.6
RUN_DEPENDS +=		${MODTK_RUN_DEPENDS} \
			math/gnuplot
BUILD_DEPENDS +=	${MODTK_BUILD_DEPENDS}
CONFIGURE_ARGS +=	--with-wish=${MODTK_BIN}
.endif

.include <bsd.port.mk>
