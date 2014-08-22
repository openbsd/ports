# $OpenBSD: Makefile,v 1.10 2014/08/22 22:49:07 kili Exp $

COMMENT =	library for manipulating the terminal
CATEGORIES =	devel

# also adapt MASTER_SITES when changing the version!
DISTNAME =	lambda-term-1.3
REVISION =	2
PKGNAME =	ocaml-${DISTNAME}
MASTER_SITES =	http://forge.ocamlcore.org/frs/download.php/1034/

HOMEPAGE =	http://forge.ocamlcore.org/projects/lambda-term


# BSD3
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB =	c ev m pthread charset

MODULES =	lang/ocaml converters/libiconv

BUILD_DEPENDS =	devel/ocaml-lwt devel/ocaml-zed
RUN_DEPENDS =	devel/ocaml-lwt devel/ocaml-zed
LIB_DEPENDS =	devel/libev

CONFIGURE_STYLE =	oasis


pre-configure:
	${SUBST_CMD} ${WRKSRC}/{_oasis,myocamlbuild.ml,setup.ml}

post-install:
	${INSTALL_DATA} \
		${WRKDIST}/{LICENSE,CHANGES} \
		${PREFIX}/share/doc/ocaml-lambda-term/
	gunzip ${PREFIX}/man/*/*.gz

.include <bsd.port.mk>
