# $OpenBSD: Makefile,v 1.16 2016/03/29 11:27:01 naddy Exp $

COMMENT =	library for manipulating the terminal
CATEGORIES =	devel

V =		1.9
DISTNAME =	lambda-term-${V}
GH_ACCOUNT =	diml
GH_PROJECT =	lambda-term
GH_TAGNAME =	$V
DISTNAME =	${GH_PROJECT}-${V}
PKGNAME =	ocaml-${DISTNAME}
REVISION =	0

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
