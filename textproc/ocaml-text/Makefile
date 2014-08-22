# $OpenBSD: Makefile,v 1.6 2014/08/22 22:49:07 kili Exp $

COMMENT =	library for dealing with unicode text
CATEGORIES =	devel textproc

NAME =		ocaml-text
DISTNAME =	${NAME}-0.6
REVISION =	2
MASTER_SITES =	https://forge.ocamlcore.org/frs/download.php/937/

HOMEPAGE =	http://ocaml-text.forge.ocamlcore.org/


# BSD3
PERMIT_PACKAGE_CDROM =		Yes

MODULES =	converters/libiconv \
		lang/ocaml

RUN_DEPENDS =	lang/ocaml devel/ocaml-pcre
BUILD_DEPENDS =	sysutils/findlib devel/ocaml-pcre

# patch-setup_ml
BUILD_DEPENDS +=devel/gmake

CONFIGURE_STYLE =	oasis
CONFIGURE_ARGS =	--enable-pcre

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${NAME}
	${INSTALL_DATA} ${WRKDIST}/examples/* ${PREFIX}/share/examples/${NAME}/

.include <bsd.port.mk>
