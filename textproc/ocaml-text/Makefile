# $OpenBSD: Makefile,v 1.3 2013/03/11 11:42:42 espie Exp $

COMMENT =	library for dealing with unicode text
CATEGORIES =	devel textproc

NAME =		ocaml-text
DISTNAME =	${NAME}-0.6
REVISION =	0
MASTER_SITES =	https://forge.ocamlcore.org/frs/download.php/937/

HOMEPAGE =	http://ocaml-text.forge.ocamlcore.org/


# BSD3
PERMIT_PACKAGE_CDROM =		Yes

MODULES =	lang/ocaml

RUN_DEPENDS =	lang/ocaml devel/ocaml-pcre
BUILD_DEPENDS =	sysutils/findlib devel/ocaml-pcre
LIB_DEPENDS =	converters/libiconv
WANTLIB =	iconv

CONFIGURE_STYLE =	oasis
CONFIGURE_ARGS =	--enable-pcre

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${NAME}
	${INSTALL_DATA} ${WRKDIST}/examples/* ${PREFIX}/share/examples/${NAME}/

.include <bsd.port.mk>
