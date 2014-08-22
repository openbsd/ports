# $OpenBSD: Makefile,v 1.5 2014/08/22 22:49:07 kili Exp $

COMMENT =	OCaml bindings for libssl
CATEGORIES =	devel security

NAME =		ocaml-ssl
DISTNAME =	${NAME}-0.4.6
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=savonet/ocaml-ssl/}
REVISION =	2

HOMEPAGE =	http://sourceforge.net/projects/savonet/files/ocaml-ssl/

# LGPL2.1
PERMIT_PACKAGE_CDROM =		Yes

MODULES =	lang/ocaml

BUILD_DEPENDS =	sysutils/findlib
RUN_DEPENDS =	lang/ocaml
WANTLIB =	crypto ssl

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		LIBS=-lcrypto

USE_GMAKE =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${NAME}/html
	${INSTALL_DATA} ${WRKDIST}/{README,CHANGES} ${PREFIX}/share/doc/${NAME}/
	${INSTALL_DATA} ${WRKDIST}/doc/html/* ${PREFIX}/share/doc/${NAME}/html/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${NAME}
	${INSTALL_DATA} ${WRKDIST}/examples/* ${PREFIX}/share/examples/${NAME}/


.include <bsd.port.mk>
