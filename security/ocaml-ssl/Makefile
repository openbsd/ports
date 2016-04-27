# $OpenBSD: Makefile,v 1.12 2016/04/27 00:12:22 jca Exp $

COMMENT =	OCaml bindings for libssl
CATEGORIES =	devel security

NAME =		ocaml-ssl
DISTNAME =	${NAME}-0.5.2
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=savonet/ocaml-ssl/}

HOMEPAGE =	http://sourceforge.net/projects/savonet/files/ocaml-ssl/

# LGPL2.1
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += crypto ssl

MODULES =	lang/ocaml

BUILD_DEPENDS =	sysutils/findlib

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		LIBS=-lcrypto

USE_GMAKE =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${NAME}/html
	${INSTALL_DATA} ${WRKDIST}/{README.md,CHANGES} ${PREFIX}/share/doc/${NAME}/
	${INSTALL_DATA} ${WRKDIST}/doc/html/* ${PREFIX}/share/doc/${NAME}/html/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${NAME}
	${INSTALL_DATA} ${WRKDIST}/examples/* ${PREFIX}/share/examples/${NAME}/

.include <bsd.port.mk>
