# $OpenBSD: Makefile,v 1.15 2015/08/30 15:59:21 avsm Exp $

COMMENT =	library for manipulating the terminal
CATEGORIES =	devel

V =		1.9
DISTNAME =	lambda-term-${V}
GH_ACCOUNT =	diml
GH_PROJECT =	lambda-term
GH_TAGNAME =	$V
DISTNAME =	${GH_PROJECT}-${V}
PKGNAME =	ocaml-${DISTNAME}

# BSD3
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB =	c ev m pthread charset

MODULES =	lang/ocaml converters/libiconv

BUILD_DEPENDS =	devel/ocaml-lwt devel/ocaml-zed lang/ocaml-camlp4
RUN_DEPENDS =	devel/ocaml-lwt devel/ocaml-zed
LIB_DEPENDS =	devel/libev

CONFIGURE_STYLE =	oasis


pre-configure:
	${SUBST_CMD} ${WRKSRC}/{_oasis,myocamlbuild.ml,setup.ml}

post-install:
	${INSTALL_DATA} \
		${WRKDIST}/{LICENSE,CHANGES.md,README.md} \
		${PREFIX}/share/doc/ocaml-lambda-term/
	gunzip ${PREFIX}/man/*/*.gz

.include <bsd.port.mk>
