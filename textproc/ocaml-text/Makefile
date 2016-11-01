# $OpenBSD: Makefile,v 1.11 2016/11/01 22:02:59 krw Exp $

COMMENT =	library for dealing with unicode text
CATEGORIES =	devel textproc

NAME =		ocaml-text
DISTNAME =	${NAME}-0.6
REVISION =	5
MASTER_SITES =	https://forge.ocamlcore.org/frs/download.php/937/

HOMEPAGE =	http://ocaml-text.forge.ocamlcore.org/


# BSD3
PERMIT_PACKAGE_CDROM =		Yes

MODULES =	lang/ocaml

WANTLIB =	iconv

LIB_DEPENDS =	converters/libiconv
RUN_DEPENDS =	lang/ocaml devel/ocaml-pcre
BUILD_DEPENDS =	sysutils/findlib devel/ocaml-pcre lang/ocaml-camlp4 \
		devel/ocaml-ocamlbuild

# patch-setup_ml
BUILD_DEPENDS +=devel/gmake

CONFIGURE_STYLE =	oasis
CONFIGURE_ARGS =	--enable-pcre

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${NAME}
	${INSTALL_DATA} ${WRKDIST}/examples/* ${PREFIX}/share/examples/${NAME}/

.include <bsd.port.mk>
