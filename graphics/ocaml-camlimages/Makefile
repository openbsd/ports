# $OpenBSD: Makefile,v 1.9 2015/08/30 16:06:34 avsm Exp $

COMMENT=	image manipulation functions for Objective Caml
CATEGORIES=	graphics

V=		4.2.1
DISTNAME=	camlimages-$V
PKGNAME=	ocaml-${DISTNAME}
DISTFILES=	$V.tar.gz
# XXX bogus filename; fix at next update, see new DISTFILES syntax with {}
MASTER_SITES=	https://bitbucket.org/camlspotter/camlimages/get/
WRKDIST=	${WRKDIR}/camlspotter-camlimages-447c5c72b044

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>
HOMEPAGE=	http://cristal.inria.fr/camlimages/

PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/ocaml

LIB_DEPENDS=	graphics/jpeg \
		graphics/giflib \
		graphics/png \
		graphics/tiff \
		graphics/libexif \
		x11/gtk+2

BUILD_DEPENDS=	devel/omake \
		sysutils/findlib \
		lang/ocaml,-graphics \
		print/ghostscript/gnu \
		x11/lablgtk2

WANTLIB = 	X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB +=	Xpm Xrandr Xrender atk-1.0 c cairo exif fontconfig
WANTLIB +=	freetype gdk-x11-2.0 gdk_pixbuf-2.0 gif gio-2.0 glib-2.0
WANTLIB +=	gobject-2.0 gtk-x11-2.0 intl jpeg m pango-1.0 pangocairo-1.0
WANTLIB +=	pangoft2-1.0 png pthread tiff z

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mocaml_native}
MAKE_ENV +=	OCAML_NATIVE=1
.else
MAKE_ENV +=	OCAML_NATIVE=0
.endif

MAKE_FLAGS+=	CFLAGS="${CFLAGS} \
			-I${X11BASE}/include \
			-I${X11BASE}/include/X11 \
			-I${LOCALBASE}/include" \
		LDFLAGS=" \
			-L${X11BASE}/lib \
			-L${LOCALBASE}/lib"

TEST_IS_INTERACTIVE = X11

OMAKE=		omake --force-dotomake --dotomake ${WRKSRC}/omake_cache

pre-build:
	${SUBST_CMD} ${WRKSRC}/OMakefile

do-build:
	cd ${WRKSRC} && env -i ${MAKE_ENV} ${OMAKE} ${MAKE_FLAGS}

do-install:
	cd ${WRKSRC} && env -i ${MAKE_ENV} \
	${OMAKE} ${ALL_FAKE_FLAGS} ${FAKE_TARGET}

post-install:
	@cp -R ${WRKSRC}/examples/ ${PREFIX}/share/examples/ocaml-camlimages

do-test:
	cd ${WRKSRC}/test && ./test

.include <bsd.port.mk>
