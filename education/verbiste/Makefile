COMMENT=	French and Italian conjugation system

DISTNAME=	verbiste-0.1.49
SHARED_LIBS=	verbiste-0.1	5.0	# .0.0
CATEGORIES=	education
HOMEPAGE=	http://perso.b2b2c.ca/~sarrazip/dev/verbiste.html

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 c cairo expat fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gtk-x11-2.0 harfbuzz iconv
WANTLIB += intl lzma m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pthread ${COMPILER_LIBCXX} xcb xml2 z

COMPILER =	base-clang ports-gcc

SITES=		http://perso.b2b2c.ca/~sarrazip/dev/

BUILD_DEPENDS=	textproc/p5-XML-Parser
LIB_DEPENDS=	x11/gtk+2 \
		textproc/libxml
RUN_DEPENDS=	x11/gtk+4,-guic \
		print/texlive/base,-mktexlsr


SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--enable-static \
		--with-gtk-app

MAKE_FLAGS=	INTLLIBS='$$(LTLIBINTL)' \
		latexdir='$$(datadir)/texmf-local/tex/latex/$$(PACKAGE)'

DEBUG_PACKAGES=	${BUILD_PACKAGES}

.include <bsd.port.mk>
