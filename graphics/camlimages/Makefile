# $OpenBSD: Makefile,v 1.10 2009/04/03 21:30:50 sturm Exp $

COMMENT=	image manipulation functions for Objective Caml
CATEGORIES=	graphics

DISTNAME=	camlimages-2.2.0
PKGNAME=	${DISTNAME}p3
EXTRACT_SUFX=	.tgz
MASTER_SITES=	ftp://ftp.inria.fr/INRIA/caml-light/bazar-ocaml/

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>
HOMEPAGE=	http://pauillac.inria.fr/camlimages/

PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	lang/ocaml

NO_REGRESS=	Yes 	# exists but needs manual run
CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CFLAGS="-I${LOCALBASE}/include" LDFLAGS="-L${LOCALBASE}/lib"
WRKDIST=	${WRKDIR}/camlimages-2.2

EXAMPLES_DIR=	${PREFIX}/share/examples/camlimages
USE_GMAKE=	Yes

CAMLDIR=	${DESTDIR}/${TRUEPREFIX}/lib/ocaml
MAKE_FLAGS=	CFLAGS="${CFLAGS} -I${X11BASE}/include/freetype2 \
		-I${X11BASE}/include -I${LOCALBASE}/include \
		-I${LOCALBASE}/include/libpng" LDFLAGS="-L${LOCALBASE}/lib"
FAKE_FLAGS=	CAMLDIR="${CAMLDIR}" LIBDIR="${CAMLDIR}/camlimages"

LIB_DEPENDS=	jpeg.>=62::graphics/jpeg tiff.>=36::graphics/tiff \
		png.>=4::graphics/png ungif.>=5::graphics/libungif
RUN_DEPENDS=	:ghostscript-*:print/ghostscript/gnu ::x11/lablgtk
BUILD_DEPENDS=	${RUN_DEPENDS}

ALL_TARGET=	byt ${MODOCAML_NATIVE:S,Yes,opt,:S,No,,}

pre-install:
	${INSTALL_DATA_DIR} ${OCAML_LIBDIR}

post-install:
	@chown -R ${SHAREOWN}:${SHAREGRP} ${CAMLDIR}
	@cp -R ${WRKSRC}/examples/ ${EXAMPLES_DIR}

.include <bsd.port.mk>
