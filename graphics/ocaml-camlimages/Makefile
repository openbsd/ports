# $OpenBSD: Makefile,v 1.7 2014/08/21 20:54:04 chrisz Exp $

COMMENT=	image manipulation functions for Objective Caml
CATEGORIES=	graphics

V=		4.0.1
REVISION=	1
DISTNAME=	camlimages-$V
PKGNAME=	ocaml-${DISTNAME}
DISTFILES=	v$V.tar.gz
# XXX bogus filename; fix at next update, see new DISTFILES syntax with {}
MASTER_SITES=	https://bitbucket.org/camlspotter/camlimages/get/
WRKDIST=	${WRKDIR}/camlspotter-camlimages-c803efa9d5d3

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>
HOMEPAGE=	http://cristal.inria.fr/camlimages/

PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/ocaml

WANTLIB+=	c X11 Xpm freetype gif jpeg m png tiff z

LIB_DEPENDS=	graphics/jpeg \
		graphics/giflib \
		graphics/png \
		graphics/tiff
BUILD_DEPENDS=	devel/omake \
		sysutils/findlib \
		lang/ocaml,-graphics \
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
