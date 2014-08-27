# $OpenBSD: Makefile,v 1.11 2014/08/27 08:05:17 chrisz Exp $

COMMENT =	library for manipulating the terminal
CATEGORIES =	devel

V =		1.6
DISTNAME =	lambda-term-1.6
GH_ACCOUNT =	diml
GH_PROJECT =	lambda-term
GH_TAGNAME =	$V
GH_COMMIT =	3f31956c450f450fc265f98107242373824cded1
DISTNAME =	${GH_PROJECT}-${V}
PKGNAME =	ocaml-${DISTNAME}

HOMEPAGE =	https://github.com/diml/lambda-term


# BSD3
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB =	c ev m pthread charset

MODULES =	lang/ocaml converters/libiconv

BUILD_DEPENDS =	devel/ocaml-lwt devel/ocaml-zed lang/ocaml,-camlp4
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
