COMMENT=	OCaml package manager
CATEGORIES=	sysutils
DISTNAME=	findlib-1.9.6
REVISION=	2

SITES=		http://download.camlcity.org/download/

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>
HOMEPAGE=	http://projects.camlcity.org/projects/findlib.html

# MIT/X11
PERMIT_PACKAGE=	Yes

MODULES+=	lang/ocaml x11/tk

WANTLIB +=	c m

CONFIGURE_STYLE=simple
CONFIGURE_ARGS= -no-custom \
		-sitelib "${PREFIX}/lib/ocaml" \
		-config ${SYSCONFDIR}/findlib.conf

USE_GMAKE=	Yes
NO_TEST=	Yes

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mocaml_native}
ALL_TARGET =	all opt
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/findlib
	mv \
	  ${WRKINST}${SYSCONFDIR}/findlib.conf \
	  ${PREFIX}/share/examples/findlib/
#	Since our OCaml is >=4.03, declare uchar availability according to
#	D. Bünzli's compatibility package. https://github.com/ocaml/uchar.
	${INSTALL_DATA_DIR} ${PREFIX}/lib/ocaml/uchar
	${INSTALL_DATA} \
	  ${FILESDIR}/META.uchar \
	  ${PREFIX}/lib/ocaml/uchar/META

.include <bsd.port.mk>
