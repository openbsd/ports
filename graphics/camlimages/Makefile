# $OpenBSD: Makefile,v 1.16 2011/11/01 20:30:49 jasper Exp $

COMMENT=	image manipulation functions for Objective Caml
CATEGORIES=	graphics

DISTNAME=	camlimages-3.0.2
EXTRACT_SUFX=	.tgz
MASTER_SITES=	http://caml.inria.fr/distrib/bazar-ocaml/

REVISION=	1

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>
HOMEPAGE=	http://cristal.inria.fr/camlimages/

PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	devel/gettext \
		lang/ocaml

WANTLIB+=	ICE SM X11 Xpm freetype gif jpeg m png tiff z

LIB_DEPENDS=	graphics/libungif \
		graphics/png \
		graphics/tiff
RUN_DEPENDS=	print/ghostscript/gnu \
		x11/lablgtk2
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE= gnu
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
		LDFLAGS="-L${LOCALBASE}/lib"
MAKE_FLAGS+=	CFLAGS="${CFLAGS} -I${LOCALBASE}/include \
			-I${LOCALBASE}/include/libpng"
PKG_ARGS+=	-Dnative=${MODOCAML_NATIVE:S,Yes,1,:S,No,0,}

# regress exists, but needs manual run and then user interaction
NO_REGRESS=	Yes

pre-configure:
	@find ${WRKSRC} -name Makefile.in -print0 | xargs -0 \
		perl -i -p -e 's!\$$\(top_srcdir\)/\.\./autoconf/ocaml\.m4!!;'

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/camlimages
	${INSTALL_DATA} ${WRKSRC}/doc/*.{html,jpg} \
		${PREFIX}/share/doc/camlimages/
	@cp -R ${WRKSRC}/examples/ ${PREFIX}/share/examples/camlimages

.include <bsd.port.mk>

.if ${MODOCAML_NATIVE:L} == "yes"
MODULES +=	devel/gettext
WANTLIB+=	GL Xcomposite Xcursor Xdamage Xext Xfixes Xi \
		Xinerama Xrandr Xrender atk-1.0 c cairo \
		expat fontconfig gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 \
		glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 \
		gtk-x11-2.0 pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pixman-1 pthread pthread-stubs xcb \
		xcb-render xcb-shm
.endif
