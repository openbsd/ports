# $OpenBSD: Makefile,v 1.4 2013/06/04 18:41:50 naddy Exp $

COMMENT=	image manipulation functions for Objective Caml
CATEGORIES=	graphics

V=		4.0.1
REVISION=	0
DISTNAME=	camlimages-$V
PKGNAME=	ocaml-${DISTNAME}
DISTFILES=	v$V.tar.gz
MASTER_SITES=	https://bitbucket.org/camlspotter/camlimages/get/
WRKDIST=	${WRKDIR}/camlspotter-camlimages-c803efa9d5d3

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>
HOMEPAGE=	http://cristal.inria.fr/camlimages/

PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/ocaml

WANTLIB+=	c X11 Xpm freetype gif jpeg m png tiff z

LIB_DEPENDS=	graphics/jpeg \
		graphics/libungif \
		graphics/png \
		graphics/tiff
BUILD_DEPENDS=	devel/omake \
		sysutils/findlib \
		print/ghostscript/gnu

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

# test exists, but needs manual run and then user interaction
TEST_IS_INTERACTIVE = Yes

OMAKE=		omake --force-dotomake --dotomake ${WRKSRC}/omake_cache

do-build:
	cd ${WRKSRC} && env -i ${MAKE_ENV} ${OMAKE} ${MAKE_FLAGS}

do-install:
	cd ${WRKSRC} && env -i ${MAKE_ENV} \
	${OMAKE} ${ALL_FAKE_FLAGS} ${FAKE_TARGET}

post-install:
	@cp -R ${WRKSRC}/examples/ ${PREFIX}/share/examples/ocaml-camlimages

.include <bsd.port.mk>
