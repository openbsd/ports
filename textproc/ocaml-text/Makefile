# $OpenBSD: Makefile,v 1.1.1.1 2012/08/18 22:49:29 avsm Exp $

COMMENT =	library for dealing with unicode text
CATEGORIES =	devel textproc

NAME =		ocaml-text
DISTNAME =	${NAME}-0.6
MASTER_SITES =	https://forge.ocamlcore.org/frs/download.php/937/

HOMEPAGE =	http://ocaml-text.forge.ocamlcore.org/


# BSD3
PERMIT_PACKAGE_FTP =		Yes
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_DISTFILES_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes

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
